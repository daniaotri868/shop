import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';

import '../core/config/routing/router.dart';
import '../generated/assets.dart';
import '../generated/locale_keys.g.dart';
import 'app/domin/repositories/prefs_repository.dart';
import 'app/presentation/widgets/app_svg_picture.dart';
import 'app/presentation/widgets/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (GetIt.I<PrefsRepository>().registeredUser) {
      GoHome();
    }
    else{
      goLogin();
    }
    super.initState();
  }


  Future<void> goLogin() async {
    await Future.delayed(
      const Duration(seconds: 5),
          () => context.pushReplacementNamed(GRouter.config.authRoutes.login),
    );
  }

  Future<void> GoHome() async {
    await Future.delayed(
      const Duration(seconds: 3),
          () => context.goNamed(GRouter.config.productRoutes.productScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      body: Padding(
        padding: REdgeInsetsDirectional.only(bottom: 24),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              RSizedBox(
                  child: Image.asset(
                    Assets.splashImage,
                    alignment: Alignment.center,
                    height: 150,width: 150,color: context.colorScheme.onPrimary,)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppSvgPicture(Assets.heartIcon),
                  5.horizontalSpace,
                  AppText(
                    AppString.HelloInMyProject,
                    style: context.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.bold, color: context.colorScheme.onPrimary),
                  ),
                ],
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
