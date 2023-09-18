// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flyfood_restaurant/core/api/exceptions.dart';
// import 'package:flyfood_restaurant/core/config/theme/my_color_scheme.dart';
// import 'package:flyfood_restaurant/core/config/theme/typography.dart';
// import 'package:flyfood_restaurant/core/utils/extensions/build_context.dart';
// import '../../../../core/config/theme/app_theme.dart';
// import '../../../../core/utils/responsive_padding.dart';
// import '../../../../core/utils/theme_state.dart';
// import 'app_text.dart';
// import 'package:collection/collection.dart';
//
// class AppDropDownMenu<T> extends StatefulWidget {
//   const AppDropDownMenu({
//     this.items = const [],
//     this.onChange,
//     this.onSaved,
//     this.onTap,
//     this.validator,
//     this.hint,
//     this.menuMaxHeight,
//     this.icon,
//     this.focusNode,
//     Key? key,
//     this.value,
//     this.title,
//     this.isRate = false,
//   }) : super(key: key);
//
//   final ValueChanged? onChange;
//   final FormFieldSetter? onSaved;
//   final FormFieldValidator? validator;
//   final VoidCallback? onTap;
//   final List<T> items;
//   final String? hint;
//   final double? menuMaxHeight;
//   final Widget? icon;
//   final FocusNode? focusNode;
//   final T? value;
//   final String? title;
//   final bool isRate;
//
//   @override
//   State<AppDropDownMenu> createState() => _AppDropDownMenuState();
// }
//
// class _AppDropDownMenuState<T> extends ThemeState<AppDropDownMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (widget.title != null) ...{
//           AppText(
//             widget.title!,
//             style: context.textTheme.titleMedium.b,
//           ),
//           13.verticalSpace,
//         },
//         DropdownButtonFormField<T>(
//           isExpanded: true,
//           items:
//               widget.items.mapIndexed((index, e) => DropdownMenuItem<T>(value: e, child: buildItem(index, e))).toList(),
//           onChanged: widget.onChange,
//           onTap: widget.onTap,
//           onSaved: widget.onSaved,
//           validator: widget.validator,
//           menuMaxHeight: widget.menuMaxHeight,
//           icon: widget.icon ?? const SizedBox.shrink(),
//           focusNode: widget.focusNode,
//           value: widget.value,
//           dropdownColor: colorScheme.borderTextField,
//           isDense: false,
//           hint: widget.hint != null
//               ? AppText(
//                   widget.hint!,
//                   style: textTheme.titleSmall?.copyWith(color: colorScheme.drawer.withOpacity(0.3)),
//                 )
//               : null,
//           borderRadius: BorderRadius.circular(8).r,
//           style: textTheme.bodyMedium?.r,
//           decoration: InputDecoration(
//             filled: false,
//             border: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.error, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: colorScheme.error, width: 0.5),
//               borderRadius: BorderRadius.circular(kbrBorderTextField),
//             ),
//             contentPadding: HWEdgeInsetsDirectional.only(start: 12, end: 12),
//             suffixIcon: Icon(Icons.keyboard_arrow_down_rounded,
//                 color: widget.items.isEmpty ? colorScheme.primary.withOpacity(0.3) : colorScheme.primary),
//           ),
//         ),
//       ],
//     );
//   }
//
//   buildItem(int index, dynamic item) {
//     final text = AppText(item is String ? item : item.name, style: textTheme.titleSmall.r);
//
//     if (widget.isRate) {
//       return Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               text,
//               Row(
//                 children: List.generate(
//                   5 - index,
//                   (index) => Icon(Icons.star_rounded, color: context.colorScheme.secondary, size: 20.r),
//                 ),
//               )
//             ],
//           ),
//           // 12.verticalSpace,
//           // if (index != widget.items.length - 1) const Divider(height: 0),
//         ],
//       );
//     }
//     return text;
//   }
// }
