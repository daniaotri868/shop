// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flyfood_restaurant/common/models/page_state/page_state.dart';
// import 'package:flyfood_restaurant/core/config/theme/typography.dart';
// import 'package:flyfood_restaurant/core/utils/extensions/build_context.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_drop_down.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_loader.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_scaffold.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_text.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/loading_indicator.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/presentation/manager/profile_bloc.dart';
// import 'package:flyfood_restaurant/generated/locale_keys.g.dart';
// import 'package:go_router/go_router.dart';
// import '../../../../core/config/routing/router.dart';
// import '../../../app/presentation/widgets/RowIconAndText.dart';
// import '../../../app/presentation/widgets/app_bottom_sheet.dart';
// import '../widgets/language_sheet.dart';
// import '../widgets/profile_list_tile_card.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   void initState() {
//     context.read<ProfileBloc>().add(const GetUserDataEvent());
//     super.initState();
//   }
//   static String getStatusText(String status) {
//     switch (status) {
//       case '0':
//         return 'Open';
//       case '1':
//         return 'close';
//
//       default:
//         return 'busy';
//     }}
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileBloc, ProfileState>(
//       builder: (context, state) {
//         return state.getUserDataStatus.when(
//             init:  () => const SizedBox.shrink(),
//             loading: () => const Center(child: LoadingIndicator()),
//             loaded: (data)=>AppScaffold(
//               body: Stack(
//                 children: [
//                   Positioned.fill(
//                     bottom: 600.h,
//                     child: Container(
//                       color: context.colorScheme.primary,
//                       height: 170.h,
//                       child: Padding(
//                         padding: REdgeInsetsDirectional.only(start: 10.w),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             60.verticalSpace,
//                             AppText(
//                               LocaleKeys.Restaurant_name,
//                               style: context.textTheme.bodyMedium.withColor(context.colorScheme.onPrimary),
//                             ),
//                             AppText(
//                               'Hello ${data.restaurantName}',
//                               style: context.textTheme.labelLarge.sb.withColor(context.colorScheme.onPrimary),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned.fill(
//                       top: 135.h,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                         decoration: BoxDecoration(
//                           color: context.colorScheme.onPrimary,
//                           borderRadius:
//                           BorderRadiusDirectional.only(topStart: Radius.circular(15.r), topEnd: Radius.circular(15.r)),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 AppText(
//                                   data.user!.userName.toString(),
//                                   style: context.textTheme.titleMedium.b,
//                                 ),
//                                 100.horizontalSpace,
//                                 AppText(
//                                   LocaleKeys.Status,
//                                   style: context.textTheme.titleSmall.sb,
//                                 )
//                               ],
//                             ),
//                             10.verticalSpace,
//                             Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     AppText(
//                                       data.user!.email.toString(),
//                                       style: context.textTheme.labelMedium,
//                                     ),
//                                     15.verticalSpace,
//                                     AppText(
//                                       data.user!.phone.toString(),
//                                       style: context.textTheme.labelMedium,
//                                     ),
//                                     10.verticalSpace,
//                                      RowIconAndText(
//                                       imagePathSvg: 'assets/image/order/Info_circle.svg',
//                                       text: '(${data.reviews})',
//                                     ),
//                                   ],
//                                 ),
//                                 90.horizontalSpace,
//                                 SizedBox(
//                                   width: 130.w,
//                                   child: AppDropDownMenu(
//                                     items: ['open', 'close', 'busy'],
//                                     hint:getStatusText(data.status.toString()),
//                                     onChange: (value) {
//                                       context.read<ProfileBloc>().add( ChangeStatusEvent(value));
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             15.verticalSpace,
//                             ProfileListTileCard(
//                                 title: 'Edit Password ',
//                                 onTap: () => context.pushNamed(GRouter.config.profileRoutes.changePasswordScreen)),
//                             10.verticalSpace,
//                             ProfileListTileCard(
//                               title: 'language',
//                               onTap: () => AppBottomSheet.show(context: context, child: const LanguageSheet()),
//                             )
//                           ],
//                         ),
//                       )),
//                 ],
//               ),
//             ),
//           empty: () => SizedBox.shrink(),
//           error: (exception) => SizedBox.shrink(),
//         );
//
//   },
// );
//   }
// }
