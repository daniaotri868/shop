import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';

import '../../../../core/config/theme/app_theme.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/presentation/widgets/app_text.dart';

class CounterCartItem extends StatefulWidget {
  const CounterCartItem({
    super.key,
    required this.onChangeCount,
    this.initCount = 0,
    required this.hasReachedMax,
    this.onIncreaseCount,
    this.onDecreaseCount,
  });

  final ValueChanged<int> onChangeCount;
  final ValueChanged<int>? onIncreaseCount;
  final ValueChanged<int>? onDecreaseCount;
  final int initCount;
  final bool hasReachedMax;

  @override
  State<CounterCartItem> createState() => _CounterCartItemState();
}

class _CounterCartItemState extends State<CounterCartItem> {
  late int count;

  @override
  void initState() {
    count = widget.initCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        actionCounter(
          Icons.add,
          () {
            // setState(() => ++count);
            widget.onIncreaseCount?.call(count);
          },
          !widget.hasReachedMax,
        ),
        SizedBox(
            width: 40.w,
            child: AppText(
              count.toString(),
              style: context.textTheme.labelLarge,
              textAlign: TextAlign.center,
            )),
        actionCounter(
          Icons.remove,
          () {
            if (count == 0) {
              return;
            }
            // setState(() => --count);
            widget.onDecreaseCount?.call(count);
          },
          count > 1,
        ),
      ],
    );
  }

  Widget actionCounter(IconData iconData, VoidCallback onTap, [bool enabled = true]) {
    return InkWell(
      onTap: enabled
          ? () {
              onTap();
              widget.onChangeCount(count);
            }
          : null,
      borderRadius: BorderRadius.circular(kbrBorderTextField),
      child: AnimatedContainer(
        duration: kTabScrollDuration,
        padding: HWEdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kbrBorderTextField),
          color: enabled ? context.colorScheme.primary : context.colorScheme.primary.withOpacity(0.5),
        ),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: context.colorScheme.onPrimary, width: 0.8),
          ),
          alignment: Alignment.center,
          child: Icon(iconData, size: 12.r, color: context.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
