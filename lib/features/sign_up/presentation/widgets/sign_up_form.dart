import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/features/sign_up/presentation/widgets/confirm_password.dart';
import 'package:shopify/features/sign_up/presentation/widgets/email_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/name_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/password_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/sign_up_button.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  bool enablePassword = false;
  bool enableConfirmPassword = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          top: context.screenHeight * 0.1, left: 10, right: 10, bottom: 20),
      child: Form(
        key: formKey,
        child: Column(
          spacing: 16,
          children: [
            Text(
              "Create Account",
              style: AppFontStyles.bold26(context),
            ),
            Text(
              "Sign With Us, and get full features",
              style: AppFontStyles.regular16(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const NameTextFormField(),
            const EmailTextFormField(),
            PassworkFromField(
              enablePassword: enablePassword,
              passwordController: passwordController,
              changeObsecure: () {
                enablePassword = !enablePassword;
                setState(() {});
              },
            ),
            ConfirmPasswordField(
                changeObsecure: () {
                  enableConfirmPassword = !enableConfirmPassword;
                  setState(() {});
                },
                enableConfirmPassword: enableConfirmPassword,
                passwordController: passwordController),
            const SizedBox(
              height: 20,
            ),
            SignUpButton(formKey: formKey),
          ],
        ),
      ),
    );
  }
}
