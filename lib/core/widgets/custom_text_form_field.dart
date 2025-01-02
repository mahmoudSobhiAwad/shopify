import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.maxLine,
      this.validator,
      this.controller,
      this.enableFocusBorder = true,
      this.textInputType,
      this.suffixText,
      this.suffixTextStyle,
      this.labelWidget,
      this.borderColor,
      this.borderRadius,
      this.borderWidth,
      this.prefixWidget,
      this.suffixWidget,
      this.textStyle,
      this.enableFill = true,
      this.fillColor,
      this.label,
      this.isObeseureText = false,
      this.labelStyle});
  final Widget? labelWidget;
  final double? borderRadius;
  final String? Function(String? value)? validator;
  final double? borderWidth;
  final Color? borderColor;
  final Color? fillColor;
  final bool enableFill;
  final Widget? suffixWidget;
  final String? suffixText;
  final TextStyle? suffixTextStyle;
  final Widget? prefixWidget;
  final int? maxLine;
  final TextInputType? textInputType;
  final bool enableFocusBorder;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final String? label;
  final TextStyle? labelStyle;
  final bool isObeseureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObeseureText,
      validator: validator,
      controller: controller,
      maxLines: maxLine,
      keyboardType: textInputType,
      cursorColor: Colors.black,
      style: textStyle,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: labelStyle,
        errorStyle: AppFontStyles.regular12(context),
        focusColor: Colors.black,
        suffixIcon: suffixWidget,
        suffixText: suffixText,
        suffixStyle: suffixTextStyle,
        fillColor: fillColor??AppColors.white,
        filled: enableFill,
        prefixIcon: prefixWidget,
        label: labelWidget,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.veryLightGray,
              width: borderWidth ?? 2,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.veryLightGray,
              width: borderWidth ?? 2,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: enableFocusBorder
              ? const BorderSide(
                  color: AppColors.black,
                  width: 2,
                )
              : BorderSide.none,
        ),
        hoverColor: Colors.white,
      ),
    );
  }
}
