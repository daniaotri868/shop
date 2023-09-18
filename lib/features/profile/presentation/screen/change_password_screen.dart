// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flyfood_restaurant/common/models/page_state/bloc_status.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_text.dart';
// import 'package:flyfood_restaurant/features/profile/presentation/manager/profile_bloc.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:go_router/go_router.dart';
//
// import '../../../../core/utils/responsive_padding.dart';
// import '../../../app/presentation/widgets/app_elvated_button.dart';
// import '../../../app/presentation/widgets/app_scaffold.dart';
// import '../../../app/presentation/widgets/app_text_field.dart';
//
// class ChangePasswordScreen extends StatefulWidget {
//   const ChangePasswordScreen({super.key});
//
//   @override
//   State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
// }
//
// class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
//   final _formKey = GlobalKey<FormBuilderState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return AppScaffold(
//       appBar: AppBar(title: const AppText("Change Password")),
//       body: FormBuilder(
//         key: _formKey,
//         child: ListView(
//           padding: HWEdgeInsets.symmetric(horizontal: 16, vertical: 30),
//           children: [
//             AppTextField(
//               title: "Current Password",
//               hintText: "Enter the current password",
//               isPasswordFiled: true,
//               textAlignVertical: TextAlignVertical.center,
//               name: 'current_password',
//               validator: FormBuilderValidators.compose([
//                 FormBuilderValidators.required(),
//                 FormBuilderValidators.min(6),
//               ]),
//             ),
//             26.verticalSpace,
//             AppTextField(
//               title: "New Password",
//               hintText: "Enter the New Password",
//               isPasswordFiled: true,
//               textAlignVertical: TextAlignVertical.center,
//               name: 'new_password',
//               validator: FormBuilderValidators.compose([
//                 FormBuilderValidators.required(),
//                 FormBuilderValidators.min(6),
//               ]),
//             ),
//             26.verticalSpace,
//             AppTextField(
//               title: "Confirm Password",
//               hintText: "Enter the Confirm Password",
//               isPasswordFiled: true,
//               textAlignVertical: TextAlignVertical.center,
//               name: 'confirm_password',
//               validator: FormBuilderValidators.compose([
//                 FormBuilderValidators.required(),
//                 FormBuilderValidators.min(6),
//                 FormBuilderValidators.equal(
//                   _formKey.currentState?.fields['new_password']!.value ?? '',
//                   errorText: "confirm and new password mismatch.",
//                 )
//               ]),
//             ),
//             150.verticalSpace,
//             BlocSelector<ProfileBloc, ProfileState, BlocStatus>(
//               selector: (state) => state.changePasswordStatus,
//               builder: (context, state) {
//                 return Center(
//                   child: SizedBox(
//                     width: 200.w,
//                     child: AppElevatedButton(
//                       text: "Change Password",
//                       onPressed: () {
//                         final validate = _formKey.currentState!.validate();
//                         if (!validate) {
//                           return;
//                         }
//
//                         final currentPassword = _formKey.currentState!.fields['current_password']!.value;
//                         final newPassword = _formKey.currentState!.fields['new_password']!.value;
//                         final newConfirmPassword = _formKey.currentState!.fields['confirm_password']!.value;
//                         context.read<ProfileBloc>().add(ChangePasswordEvent(
//                           currentPassword: currentPassword,
//                           newPassword: newPassword,
//                           newConfirmPassword: newConfirmPassword,
//                           onSuccess: () => GoRouter.of(context).pop(),
//                         ));
//                       },
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
