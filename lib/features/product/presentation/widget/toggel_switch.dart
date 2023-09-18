// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flyfood_restaurant/core/utils/extensions/build_context.dart';
// import 'package:flyfood_restaurant/features/app/presentation/widgets/app_text.dart';
//
// import '../bloc/product_bloc.dart';
//
// class SwitchButtonWidget extends StatelessWidget {
//   final int selected;
//
//   const SwitchButtonWidget({super.key, required this.selected});
//
//   @override
//   Widget build(BuildContext context) {
//     return SwitchListTile(
//       title: AppText(
//         'status menu',
//         style: context.textTheme.titleSmall,
//       ),
//       value: selected == 1 ? true : false,
//       onChanged: (value) {
//         context.read<ProductBloc>().add(ChangeActiveMenuEvent(value?0:1));
//       },
//     );
//   }
// }
