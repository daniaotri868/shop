import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';
import '../../../../common/models/page_state/bloc_status.dart';
import '../../../../core/config/routing/router.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../app/presentation/widgets/app_elvated_button.dart';
import '../../../app/presentation/widgets/app_text.dart';
import '../../../app/presentation/widgets/app_text_field.dart';
import '../auth_bloc/auth_bloc.dart';

class ContainerLogin extends StatelessWidget {
  ContainerLogin({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
  builder: (context, state) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            height: MediaQuery
                .sizeOf(context)
                .height/1.45,
            width: MediaQuery
                .sizeOf(context)
                .width,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            padding: REdgeInsetsDirectional.only(
              top: 15,
              start: 17,
              end: 17,
            ),
            child: SingleChildScrollView(
              child: FormBuilder(
                 key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      AppString.hello,
                      style: context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    35.verticalSpace,
                    // 12.verticalSpace,
                    AppTextField(
                      controller: emailController,
                      title: AppString.email,
                      hintText: AppString.enter_Your_Email,
                      validator:
                      FormBuilderValidators.compose([FormBuilderValidators.required(), FormBuilderValidators.email()]),
                      name: 'email',
                    ),
                    12.verticalSpace,

                    AppTextField(
                      controller: passwordController,
                      title: AppString.password,
                      hintText: AppString.enter_Your_Password,
                      isPasswordFiled: true,
                      validator:
                      FormBuilderValidators.compose([FormBuilderValidators.required(), FormBuilderValidators.minLength(6)]),
                      name: 'password',
                    ),
                    TextButton(
                      onPressed: () {
                        context.go("${GRouter.config.authRoutes.login}/${GRouter.config.authRoutes.createUser}");

                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: context.textTheme.bodyMedium,
                        foregroundColor: context.colorScheme.scrim,
                      ),
                      child: const AppText(AppString.create_account),
                    ),
                    BlocSelector<AuthBloc, AuthState, BlocStatus>(
                    selector: (state) =>state.loginStatus,
                     builder: (context, state) {
                      return AppElevatedButton(
                      text:AppString.login,
                      isLoading: state.isLoading(),
                      onPressed: ( ) {
                        _formkey.currentState!.save();
                        _formkey.currentState!.validate();
                        context.read<AuthBloc>().add(
                          LoginEvent(
                              email: _formkey.currentState!.value['email'],
                              password: _formkey.currentState!.value['password']
                          )
                        );
                      },
                    );
  },
                     )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
