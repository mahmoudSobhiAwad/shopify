import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';

class ErrorBuilderImage extends StatelessWidget {
  const ErrorBuilderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Error in Image",
          style: AppFontStyles.bold16(context),
        ),
        const Icon(
          Icons.error,
          color: AppColors.red,
        )
      ],
    );
  }
}

