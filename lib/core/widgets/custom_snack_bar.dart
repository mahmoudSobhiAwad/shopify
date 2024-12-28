import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';

void showCustomSnackBar(BuildContext context, String message,
    {Color backgroundColor = AppColors.green,
    Duration duration = const Duration(milliseconds: 1500)}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: AppFontStyles.bold16(context).copyWith(color: AppColors.white),
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating, // Makes it float above the content
      margin: const EdgeInsets.all(16), // Adds margin if behavior is floating
    ),
  );
}
