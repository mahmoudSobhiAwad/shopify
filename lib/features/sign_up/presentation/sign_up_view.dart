import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/features/sign_up/presentation/widgets/bg_layer.dart';
import 'package:shopify/features/sign_up/presentation/widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    // add safe area to avoid phone bar spacign
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        // stack to put blur layer in backgroun
        body: Stack(
          children: [
            // the background layer
            BackGroundBlurLayer(),
            // form sign up 
            FormSignUp(),
          ],
        ),
      ),
    );
  }
}

