import 'package:flutter/material.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../../core/config/theme/colors_app.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/widgets/app_text.dart';

class ProfileListTileCard extends StatelessWidget {
  const ProfileListTileCard({
    super.key,
    required this.title,
    this.onTap,
    this.trailing,
  });

  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      borderRadius: BorderRadius.circular(kbrBorderTextField),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        padding: HWEdgeInsets.symmetric(vertical: 14, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(title, style: context.textTheme.titleSmall),
            if (trailing != null) trailing! else const Icon(Icons.keyboard_arrow_right_rounded),
          ],
        ),
      ),
    );
  }
}
