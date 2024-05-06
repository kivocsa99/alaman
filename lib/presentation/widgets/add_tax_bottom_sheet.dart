import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/tax/new_request_use_case/new_request.use.case.dart';
import 'package:alaman/application/tax/new_request_use_case/new_request.use.case.input.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/presentation/widgets/error_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaxBottomSheet extends HookConsumerWidget {
  const TaxBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final formKey = useState(GlobalKey<FormState>());
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final notes = useState("notes".tr());
    final date = useState("date".tr());
    final isLoading = useState(false);

    return Padding(
      padding: EdgeInsets.only(
        bottom: viewInsets,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
        height: MediaQuery.of(context).size.height * 0.75,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: formKey.value,
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(bottom: viewInsets),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => context.router.maybePop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color(0xff16437B),
                            ),
                          ),
                          Text(
                            "Pick Date",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.bold),
                          ).tr(),
                          IconButton(
                            onPressed: () => context.router.maybePop(),
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xff16437B),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () async {
                          await showCupertinoModalPopup(
                              context: context,
                              builder: (_) => Container(
                                    height: 250,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 180,
                                          child: CupertinoPicker(
                                            backgroundColor: Colors.white,
                                            itemExtent: 32.0,
                                            onSelectedItemChanged: (int selectedIndex) {
                                              int selectedYear = DateTime.now().year + selectedIndex;
                                              date.value = selectedYear.toString();
                                            },
                                            children: List<Widget>.generate(10, (int index) {
                                              return Center(
                                                child: Text(
                                                  (DateTime.now().year + index).toString(),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),

                                        // Close the modal
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 70,
                                            child: CupertinoButton(
                                              child: const Text('Confirm', style: TextStyle(color: Color(0xff18447B))),
                                              onPressed: () {
                                                context.router.maybePop();
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 10),
                          width: double.infinity,
                          height: 70,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                date.value,
                                style: const TextStyle(
                                  color: Colors.black26,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Icon(
                                Icons.calendar_month,
                                color: Colors.black26,
                              )
                            ],
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
                      const Gap(10),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: AuthContainer(
                          raduis: 50,
                          height: 50,
                          onTap: () async {
                            if (formKey.value.currentState!.validate()) {
                              if (date.value != "date".tr()) {
                                isLoading.value = true;
                                ref.read(newTaxRequestUseCaseProvider).execute(NewTaxRequestUseCaseInput(notes: notes.value, year: date.value)).then((value) {
                                  isLoading.value = false;
                                  context.router.maybePop();
                                  value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.message ?? "internetconnection").tr())),
                                      (r) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Tax Request submitted").tr())));
                                });
                              } else {
                                await showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => const ErrorDialog(
                                          description: "datecheck",
                                        ));
                              }
                            }
                          },
                          color: const Color(0xffFFC629),
                          child: isLoading.value == false
                              ? Text(
                                  "confirm",
                                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                ).tr()
                              : const CircularProgressIndicator(),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
