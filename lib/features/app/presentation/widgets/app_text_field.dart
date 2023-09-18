import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_shop/core/config/theme/typography.dart';
import 'package:new_shop/core/utils/extensions/build_context.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../../core/config/theme/colors_app.dart';
import 'app_text.dart';

class AppTextField<T> extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.name,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.icon,
    this.hintTextStyle,
    this.textStyle,
    this.suffixIcon,
    this.suffix,
    this.hintText,
    this.labelText,
    this.borderSideColor,
    this.filled,
    this.fillColor,
    this.labelTextStyle,
    this.borderRadius,
    this.title,
    this.borderWidth,
    this.isPasswordFiled = false,

  }) : super(key: key);

  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final Widget? prefixIcon;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final String? labelText;
  final Color? borderSideColor;
  final Color? fillColor;
  final bool? filled;
  final TextStyle? labelTextStyle;
  final BorderRadius? borderRadius;
  final String? title;
  final double? borderWidth;
  final bool isPasswordFiled;
  final String name;

  @override
  State<AppTextField> createState() => _AppTextFieldState();

  static Widget _defaultContextMenuBuilder(BuildContext context, EditableTextState editableTextState) {
    return AdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );
  }
}

class _AppTextFieldState extends State<AppTextField> {
  late final ValueNotifier<bool> obscureNotifier;

  @override
  void initState() {
    obscureNotifier = ValueNotifier(widget.isPasswordFiled);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...{
          AppText(
            widget.title!,
            style: context.textTheme.titleMedium.b,
          ),
          13.verticalSpace,
        },
        ValueListenableBuilder<bool>(
            valueListenable: obscureNotifier,
            builder: (context, obscureValue, _) {
              return FormBuilderTextField(
                name: widget.name,
                controller: widget.controller,
                validator: widget.validator,
                style: widget.textStyle ??
                    context.textTheme.titleSmall?.r?.copyWith(
                      color: context.colorScheme.onBackground,
                      decoration: TextDecoration.none,
                      // decorationColor: context.colorScheme.borderTextField,
                    ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderSideColor ?? context.colorScheme.primary,
                      width: widget.borderWidth ?? 0.5,
                    ),
                    borderRadius: widget.borderRadius ?? BorderRadius.circular(kbrBorderTextField),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderSideColor ?? context.colorScheme.primary,
                      width: widget.borderWidth ?? 0.5,
                    ),
                    borderRadius: widget.borderRadius ?? BorderRadius.circular(kbrBorderTextField),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderSideColor ?? context.colorScheme.primary,
                      width: widget.borderWidth ?? 0.5,
                    ),
                    borderRadius: widget.borderRadius ?? BorderRadius.circular(kbrBorderTextField),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderSideColor ?? context.colorScheme.primary,
                      width: widget.borderWidth ?? 0.5,
                    ),
                    borderRadius: widget.borderRadius ?? BorderRadius.circular(kbrBorderTextField),
                  ),

                  filled: widget.filled,
                  fillColor: widget.fillColor,
                  prefixIcon: widget.prefixIcon,
                  icon: widget.icon,
                  suffixIcon: widget.isPasswordFiled ? eyeIcon(obscureValue) : widget.suffixIcon,
                  suffix: widget.suffix,
                  hintText: widget.hintText,
                  hintStyle:
                      widget.hintTextStyle ?? context.textTheme.bodyMedium?.withColor(AppColors.grey),
                  labelText:  widget.labelText,
                  labelStyle:
                      widget.labelTextStyle ?? context.textTheme.bodyMedium?.withColor(AppColors.hintColor),
                ),
              );
            }),
      ],
    );
  }

  Widget eyeIcon(bool obscure) {
    return IconButton(
      onPressed: () => obscureNotifier.value = !obscure,
      icon: Icon(obscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye, color: context.colorScheme.primary),
    );
  }
}
