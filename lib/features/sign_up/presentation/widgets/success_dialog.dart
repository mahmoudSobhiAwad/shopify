import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/features/home/presentation/home_view.dart';

Future<dynamic> showSuccessDialog(BuildContext context) {
  //usign show dialog method to show success sign up
  return showDialog(
    // to deny dissmiss dialog , and allow only from button 
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        icon: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {
              // first remove dialog
              context.pop();
              //second navigate to home
              context.push(const HomeView());
            },
            icon: const Icon(
              Icons.close,
              color: AppColors.red,
              size: 30,
            ),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            const Icon(
              Icons.celebration_rounded,
              color: AppColors.peige,
              size: 50,
            ),
            Text(
              "Welcom To Shopify",
              style: AppFontStyles.logoBold24(context),
            ),
          ],
        ),
      );
    },
    context: context,
  );
}
