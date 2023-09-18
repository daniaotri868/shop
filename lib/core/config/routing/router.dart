import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../features/auth/presentation/pages/create_user.dart';
import '../../../features/auth/presentation/pages/login.dart';
import '../../../features/product/presentation/screen/Products.dart';
import '../../../features/splash.dart';
import 'router_config.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class GRouter {
  static GoRouter get router => _router;

  static RouterConfiguration get config => _config;

  static final RouterConfiguration _config = RouterConfiguration.init();

  static final GoRouter _router = GoRouter(
    initialLocation: _config.kRootRoute,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
          path: _config.kRootRoute,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return _builderPage(
              child: const SplashScreen(),
              state: state,
            );
          }),
      GoRoute(
        path: _config.authRoutes.login,
        name: _config.authRoutes.login,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _builderPage(
            child: const LoginScreen(),
            state: state,
          );
        },
        routes: [
          GoRoute(
            path: _config.authRoutes.createUser,
            name: _config.authRoutes.createUser,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return _builderPage(
                child: CreateUser(),
                state: state,
              );
            },
          ),
        ]
      ),

      GoRoute(
        path: _config.productRoutes.productScreen,
        name: _config.productRoutes.productScreen,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _builderPage(
            child: products(),
            state: state,
          );
        },
      ),
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, child) {
      //     return const HomePage();
      //   },
      //   branches: [
      //     StatefulShellBranch(
      //       initialLocation: _config.homeRoutes.homeScreen,
      //       routes: [
      //         GoRoute(
      //           path: _config.homeRoutes.homeScreen,
      //           name: _config.homeRoutes.homeScreen,
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             return _builderPage(
      //               child: const OrderPage(),
      //               state: state,
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: _config.homeRoutes.orderDetailScreen,
      //               name: _config.homeRoutes.orderDetailScreen,
      //               parentNavigatorKey: _rootNavigatorKey,
      //               pageBuilder: (BuildContext context, GoRouterState state) {
      //                 return _builderPage(
      //                   child: OrderDetailScreen(orderModel: state.extra as OrderModel),
      //                   state: state,
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       initialLocation: _config.productRoutes.productScreen,
      //       routes: [
      //         GoRoute(
      //           path: _config.productRoutes.productScreen,
      //           name: _config.productRoutes.productScreen,
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             return _builderPage(
      //               child: const products(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       initialLocation: _config.notificationRoutes.notificationScreen,
      //       routes: [
      //         GoRoute(
      //           path: _config.notificationRoutes.notificationScreen,
      //           name: _config.notificationRoutes.notificationScreen,
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             return _builderPage(
      //               child: const NotoficationPage(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     // StatefulShellBranch(
      //     //   initialLocation: _config.profileRoutes.profileScreen,
      //     //   routes: [
      //     //     GoRoute(
      //     //         path: _config.profileRoutes.profileScreen,
      //     //         name: _config.profileRoutes.profileScreen,
      //     //         pageBuilder: (BuildContext context, GoRouterState state) {
      //     //           return _builderPage(
      //     //             child: const ProfilePage(),
      //     //             state: state,
      //     //           );
      //     //         },
      //     //         routes: [
      //     //           GoRoute(
      //     //               path: _config.profileRoutes.changePasswordScreen,
      //     //               name: _config.profileRoutes.changePasswordScreen,
      //     //               parentNavigatorKey: _rootNavigatorKey,
      //     //               pageBuilder: (BuildContext context, GoRouterState state) {
      //     //                 return _builderPage(
      //     //                   child: const ChangePasswordScreen(),
      //     //                   state: state,
      //     //                 );
      //     //               })
      //     //         ]),
      //     //   ],
      //     // ),
      //   ],
      // ),
    ],
    errorBuilder: (context, state) => Container(),
  );

  static Page<dynamic> _builderPage<T>({required Widget child, required GoRouterState state}) {
    if (Platform.isIOS) {
      return CupertinoPage<T>(child: child, key: state.pageKey);
    } else {
      return MaterialPage<T>(child: child, key: state.pageKey);
    }
  }
}
