import 'package:flutter/material.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';

import 'app_text.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar({Key? key, required this.text, this.icon}) : super(key: key);
final String text;
final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        AppText(
          text,
          style: context.textTheme.bodyLarge,

        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(icon))
      ],
    );
  }
}
