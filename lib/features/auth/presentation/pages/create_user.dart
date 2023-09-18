import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:new_shop/core/config/theme/typography.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../app/presentation/widgets/app_elvated_button.dart';
import '../../../app/presentation/widgets/app_scaffold.dart';
import '../../../app/presentation/widgets/app_svg_picture.dart';
import '../../../app/presentation/widgets/app_text.dart';
import '../../../app/presentation/widgets/app_text_field.dart';
import '../auth_bloc/auth_bloc.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: HWEdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: FormBuilder(
            key: _formkey,
            child: ListView(

              children: [
                const RSizedBox(height: 100,),
                const RSizedBox(

                  height: 120,
                    child: AppSvgPicture(Assets.lock,)
                ),
                33.verticalSpace,
                AppText(
                  AppString.enter_Your_Email,
                  style: context.textTheme.titleSmall!.r,
                  textAlign: TextAlign.end,
                ),
                30.verticalSpace,
                AppTextField(
                  title: AppString.email,
                  hintText: AppString.enter_Your_Email,
                  name: 'email',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                RSizedBox(height: 10,),
                AppTextField(
                  title: AppString.userName,
                  hintText: AppString.enter_Your_UserName,
                  name: 'username',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    // FormBuilderValidators.email(),
                  ]),
                ),
                RSizedBox(height: 10,),
                AppTextField(
                  // controller: passwordController,
                  title: AppString.password,
                  hintText: AppString.enter_Your_Password,
                  isPasswordFiled: true,
                  validator:
                  FormBuilderValidators.compose([FormBuilderValidators.required(), FormBuilderValidators.minLength(6)]),
                  name: 'password',
                ),
                75.verticalSpace,
                AppElevatedButton(
                  text: AppString.create_account,
                  onPressed: () {
                    _formkey.currentState!.save();
                    _formkey.currentState!.validate();
                    if (_formkey.currentState!.isValid) {
                      context.read<AuthBloc>().add(createUserEvent(
                          email:  _formkey.currentState!.value['email'],
                          username:  _formkey.currentState!.value['username']
                          ,password: _formkey.currentState!.value['password']));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
