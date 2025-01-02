import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/custom_push_button.dart';
import 'package:shopify/features/sign_up/presentation/widgets/success_dialog.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return CustomPushContainerButton(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      pushButtomText: "تسجيل",
      onTap: () {
        if (formKey.currentState!.validate()) {
          showSuccessDialog(context);
        }
      },
      color: AppColors.peige,
      borderRadius: 10,
      pushButtomTextStyle:
          AppFontStyles.bold18(context).copyWith(color: AppColors.white),
    );
  }
}

