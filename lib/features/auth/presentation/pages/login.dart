import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/routing/router.dart';
import '../../../../generated/assets.dart';
import '../../../app/presentation/widgets/app_svg_picture.dart';
import '../auth_bloc/auth_bloc.dart';
import '../widgets/container_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(

      listener: (context, state) {
        if (state.loginStatus.isSuccess()) {
          context.goNamed(GRouter.config.productRoutes.productScreen);
        }
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const RSizedBox(height: 20,),
            const AppSvgPicture(Assets.backgroundLogin),
            ContainerLogin(),
          ],
        ),
      ),
    );
  }
}
