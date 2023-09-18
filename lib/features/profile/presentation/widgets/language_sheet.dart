// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flyfood_restaurant/core/api/exceptions.dart';
// import 'package:flyfood_restaurant/core/config/theme/typography.dart';
// import 'package:flyfood_restaurant/core/utils/extensions/build_context.dart';
// import '../../../../core/config/routing/router.dart';
// import '../../../../core/utils/responsive_padding.dart';
// import '../../../../services/language_service.dart';
// import '../../../app/presentation/widgets/app_text.dart';
// import '../../../app/presentation/widgets/dash_line.dart';
//
// class LanguageSheet extends StatelessWidget {
//   const LanguageSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: HWEdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           23.verticalSpace,
//           AppText(
//             "Language",
//             style: context.textTheme.titleMedium!.sb,
//           ),
//           23.verticalSpace,
//           ListView.separated(
//             shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             itemBuilder: (context, index) => itemLanguage(
//               context,
//               index,
//               supportedLocal.indexOf(context.locale),
//               () async {
//                 await context.setLocale(supportedLocal[index]);
//                 GRouter.router.pop();
//               },
//               languageCodeAndLanguage[supportedLocal[index].languageCode]!,
//             ),
//             separatorBuilder: (context, index) => DashLine(
//               color: context.colorScheme.primary,
//               width: 7.w,
//               endIndent: 50.w,
//               indent: 50.w,
//             ),
//             itemCount: supportedLocal.length,
//           ),
//           50.verticalSpace,
//         ],
//       ),
//     );
//   }
//
//   itemLanguage(BuildContext context, int value, int groupValue, VoidCallback voidCallback, String lang) {
//     return InkWell(
//       onTap: voidCallback,
//       child: Row(
//         children: [
//           Radio<int>(
//             value: value,
//             groupValue: groupValue,
//             onChanged: (value) => voidCallback(),
//           ),
//           AppText(
//             lang,
//             style: context.textTheme.titleSmall,
//           )
//         ],
//       ),
//     );
//   }
// }
