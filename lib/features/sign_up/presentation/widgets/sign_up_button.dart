import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/custom_push_button.dart';
import 'package:shopify/features/home/presentation/home_view.dart';

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
          context.push(const HomeView());
        }
      },
      color: const Color(0xffC3BFAA),
      borderRadius: 10,
      pushButtomTextStyle:
          AppFontStyles.bold18(context).copyWith(color: AppColors.white),
    );
  }
}
