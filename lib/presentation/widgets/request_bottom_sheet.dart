import 'package:alaman/application/beneficiary/new_alaman_reqeust_use_case/new_alaman_reqeust_use_case.dart';
import 'package:alaman/application/beneficiary/new_alaman_reqeust_use_case/new_alaman_reqeust_use_case.input.dart';
import 'package:alaman/application/beneficiary/new_training_reqeust_use_case/new_training_reqeust_use_case.dart';
import 'package:alaman/application/beneficiary/new_training_reqeust_use_case/new_training_reqeust_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/alamanservices/model/alamanservices.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
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
    final locale = ref.watch(languageHiveNotifierProvider);

    final formKey = useState(GlobalKey<FormState>());
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final notes = useState("notes".tr());
    final id = useState(-1);
    final date = useState("date".tr());
    final time = useState("time".tr());
    final isLoading = useState(false);
    final availabe = useState(isProgram == false ? "availableservices".tr() : "availabletraining".tr());

    return Padding(
      padding: EdgeInsets.only(
        bottom: viewInsets,
      ),
      child: Container(
        width: double.infinity,
        height: isProgram == false ? (viewInsets > 0 ? null : MediaQuery.of(context).size.height * 0.6) : (viewInsets > 0 ? null : MediaQuery.of(context).size.height * 0.75),
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
                    isProgram == true ? 'reqtraining' : 'reqservice',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(fontSize: 23, color: const Color(0xff16437B)),
                  ).tr(),
                  Text("fillrequest", textAlign: TextAlign.center, style: Theme.of(context).primaryTextTheme.bodyMedium).tr(),
                  const Gap(40),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                                            date.value = convertApiDate(model.date_from!);
                                            time.value = model.time_from!;
                                            availabe.value = locale == "en" ? model.name! : model.name_ar!;
                                          } else {
                                            final model = services![value];
                                            id.value = model.id!;
                                            availabe.value = locale == "en" ? model.name! : model.name_ar!;
                                          }
                                        },
                                        children: isProgram == true
                                            ? programs!.map((e) => Text(locale == "en" ? e.name! : e.name_ar!)).toList()
                                            : services!.map((e) => Text(locale == "en" ? e.name! : e.name_ar!)).toList(),
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
                                              date.value = convertApiDate(programs![0].date_from!);
                                              time.value = programs![0].time_from!;
                                              availabe.value = locale == "en" ? programs![0].name! : programs![0].name_ar!;
                                            } else {
                                              id.value = services![0].id!;
                                              availabe.value = locale == "en" ? services![0].name! : services![0].name_ar!;
                                            }
                                          }
                                          context.router.maybePop();
                                        },
                                        color: const Color(0xffFFC629),
                                        child: Text(
                                          "confirm",
                                          style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                        ).tr(),
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
                        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                    hint: notes.value,
                    inputAction: TextInputAction.done,
                    onChanged: (value) => notes.value = value,
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
                          if (isProgram) {
                            ref.read(newTrainingRequestUseCaseProvider).execute(NewTrainingRequestUseCaseInput(id: id.value, notes: notes.value)).then((value) => value.fold((l) {
                                  isLoading.value = false;

                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.message ?? "internetconnection").tr()));
                                }, (r) {
                                  isLoading.value = false;

                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("selectedtrainig").tr()));
                                  context.router.maybePop();
                                }));
                          } else {
                            ref.read(newAlamanRequestRequestUseCaseProvider).execute(NewAlamanRequestRequestUseCaseInput(id: id.value, notes: notes.value)).then((value) => value.fold((l) {
                                  isLoading.value = false;

                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.message ?? "")));
                                }, (r) {
                                  isLoading.value = false;

                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("selectedservice").tr()));
                                  context.router.maybePop();
                                }));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(isProgram ? "selecttraining" : "selectservice").tr()));
                        }
                      },
                      color: const Color(0xffFFC629),
                      child: isLoading.value == false
                          ? Text(
                              "sumbitreq",
                              style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.black),
                            ).tr()
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
