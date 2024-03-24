import 'package:alaman/application/beneficiary/new_alaman_reqeust_use_case/new_alaman_reqeust_use_case.dart';
import 'package:alaman/application/beneficiary/new_alaman_reqeust_use_case/new_alaman_reqeust_use_case.input.dart';
import 'package:alaman/application/beneficiary/new_training_reqeust_use_case/new_training_reqeust_use_case.dart';
import 'package:alaman/application/beneficiary/new_training_reqeust_use_case/new_training_reqeust_use_case.input.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/alamanservices/model/alamanservices.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RequestBottomSheet extends HookConsumerWidget {
  final bool isProgram;
  final List<ProgramModel>? programs;
  final List<AlamanServicesModel>? services;
  const RequestBottomSheet({
    required this.isProgram,
    this.programs,
    this.services,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final notes = useState("");
    final id = useState(-1);
    final date = useState("Date");
    final time = useState("Time");
    final isLoading = useState(false);
    final availabe = useState(
        isProgram == false ? "Available Services" : "Available Training");

    return Padding(
      padding: EdgeInsets.only(
        bottom: viewInsets,
      ),
      child: Container(
        width: double.infinity,
        height: isProgram == false
            ? (viewInsets > 0 ? null : MediaQuery.of(context).size.height * 0.6)
            : (viewInsets > 0
                ? null
                : MediaQuery.of(context).size.height * 0.75),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey.value,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: viewInsets),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    isProgram == true
                        ? 'Request a Training'
                        : "Request Service",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyLarge
                        ?.copyWith(
                            fontSize: 23, color: const Color(0xff16437B)),
                  ),
                  Text("Fill in the Request",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).primaryTextTheme.bodyMedium),
                  const Gap(40),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      onTap: () => showCupertinoModalPopup(
                          context: context,
                          builder: (_) => Container(
                                height: 250,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 180,
                                      child: CupertinoPicker(
                                        scrollController: scrollcontroller,
                                        looping: false,
                                        itemExtent: 46,
                                        onSelectedItemChanged: (value) async {
                                          if (isProgram) {
                                            final model = programs![value];
                                            id.value = model.id!;
                                            date.value = convertApiDate(
                                                model.date_from!);
                                            time.value = model.time_from!;
                                            availabe.value = model.name!;
                                          } else {
                                            final model = services![value];
                                            id.value = model.id!;
                                            availabe.value = model.name!;
                                          }
                                        },
                                        children: isProgram == true
                                            ? programs!
                                                .map((e) => Text(e.name!))
                                                .toList()
                                            : services!
                                                .map((e) => Text(e.name!))
                                                .toList(),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: AuthContainer(
                                        raduis: 50,
                                        height: 60,
                                        onTap: () {
                                          if (id.value == -1) {
                                            if (isProgram) {
                                              id.value = programs![0].id!;
                                              date.value = convertApiDate(
                                                  programs![0].date_from!);
                                              time.value =
                                                  programs![0].time_from!;
                                              availabe.value =
                                                  programs![0].name!;
                                            } else {
                                              id.value = services![0].id!;
                                              availabe.value =
                                                  services![0].name!;
                                            }
                                          }
                                          context.router.pop();
                                        },
                                        color: const Color(0xffFFC629),
                                        child: Text(
                                          "Confirm",
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .titleSmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                      leading: Text(
                        availabe.value,
                        style: Theme.of(context).primaryTextTheme.bodyMedium,
                      ),
                      trailing: const Icon(
                        Icons.expand_more,
                        color: Color(0xff18447B),
                      ),
                    ),
                  ),
                  const Gap(10),
                  if (isProgram)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Text(
                          date.value,
                          style: Theme.of(context).primaryTextTheme.bodyMedium,
                        ),
                        trailing: const Icon(
                          Icons.expand_more,
                          color: Color(0xff18447B),
                        ),
                      ),
                    ),
                  const Gap(10),
                  if (isProgram)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Text(
                          time.value,
                          style: Theme.of(context).primaryTextTheme.bodyMedium,
                        ),
                        trailing: const Icon(
                          Icons.expand_more,
                          color: Color(0xff18447B),
                        ),
                      ),
                    ),
                  const Gap(10),
                  AuthField(
                    borderColor: Colors.grey.withOpacity(0.5),
                    borderWidth: 0.5,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "This field is required"),
                    ]),
                    hint: "Notes",
                    inputAction: TextInputAction.done,
                    onChanged: (value) {},
                  ),
                  const Gap(100),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AuthContainer(
                      raduis: 50,
                      height: 50,
                      onTap: () async {
                        if (id.value != -1) {
                          isLoading.value = true;
                          if (!isProgram) {
                            ref
                                .read(newTrainingRequestUseCaseProvider)
                                .execute(NewTrainingRequestUseCaseInput(
                                    id: id.value, notes: notes.value))
                                .then((value) => value.fold((l) {
                                      isLoading.value = false;

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(l.message ??
                                                  "Please check your internet connection")));
                                    }, (r) {
                                      isLoading.value = false;

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(isProgram
                                                  ? "You have requested the training"
                                                  : "You have requested the service")));
                                      context.router.pop();
                                    }));
                          } else {
                            ref
                                .read(newAlamanRequestRequestUseCaseProvider)
                                .execute(NewAlamanRequestRequestUseCaseInput(
                                    id: id.value, notes: notes.value))
                                .then((value) => value.fold((l) {
                                      isLoading.value = false;

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(l.message ?? "")));
                                    }, (r) {
                                      isLoading.value = false;

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  "You have requested the training")));
                                      context.router.pop();
                                    }));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Please select a training")));
                        }
                      },
                      color: const Color(0xffFFC629),
                      child: isLoading.value == false
                          ? Text(
                              "Submit Request",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.black),
                            )
                          : const CircularProgressIndicator(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
