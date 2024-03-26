// import 'package:flutter/cupertino.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// class TrainingStep1 extends HookWidget {
//   const TrainingStep1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: formKey.value,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: viewInsets),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text(
//                   'Request a Training',
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context)
//                       .primaryTextTheme
//                       .bodyLarge
//                       ?.copyWith(fontSize: 23, color: const Color(0xff16437B)),
//                 ),
//                 Text("Fill in the Request",
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).primaryTextTheme.bodyMedium),
//                 const Gap(40),
//                 AuthField(
//                   borderColor: Colors.grey.withOpacity(0.5),
//                   borderWidth: 0.5,
//                   validator:
//                       RequiredValidator(errorText: "This field is required"),
//                   hint: "Full Name",
//                   inputAction: TextInputAction.done,
//                   onChanged: (value) {},
//                 ),
//                 const Gap(20),
//                 AuthField(
//                   borderColor: Colors.grey.withOpacity(0.5),
//                   borderWidth: 0.5,
//                   validator:
//                       RequiredValidator(errorText: "This field is required"),
//                   hint: "Mobile Number",
//                   inputAction: TextInputAction.done,
//                   onChanged: (value) {},
//                 ),
//                 const Gap(20),
//                 AuthField(
//                   borderColor: Colors.grey.withOpacity(0.5),
//                   borderWidth: 0.5,
//                   validator: MultiValidator([
//                     RequiredValidator(errorText: "This field is required"),
//                     EmailValidator(
//                         errorText: "Please provide a valid email address")
//                   ]),
//                   hint: "Email",
//                   inputAction: TextInputAction.done,
//                   onChanged: (value) {},
//                 ),
//                 const Gap(20),
//                 AuthField(
//                   borderColor: Colors.grey.withOpacity(0.5),
//                   borderWidth: 0.5,
//                   validator:
//                       RequiredValidator(errorText: "This field is required"),
//                   hint: "Notes",
//                   inputAction: TextInputAction.done,
//                   onChanged: (value) => notes.value = value,
//                 ),
//                 const Gap(40),
//                 AuthContainer(
//                   raduis: 50,
//                   height: 60,
//                   onTap: () async {
//                     if (formKey.value.currentState!.validate()) {
//                       final hello = await ref.read(getGenericProvider.future);
//                       return hello.fold(
//                           (l) => ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                   content: Text(l.message ??
//                                       "check your internet connection and Contact us"))),
//                           (r) {
//                         trainingRequest.value = r.TrainingPrograms ?? [];
//                         selectedIndex.value = 1;
//                       });
//                     }
//                   },
//                   color: const Color(0xffFFC629),
//                   child: Text(
//                     "next",
//                     style: Theme.of(context)
//                         .primaryTextTheme
//                         .bodyMedium
//                         ?.copyWith(color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       );
//   }
// }class TrainingStep2 extends StatelessWidget {
//   const TrainingStep2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }