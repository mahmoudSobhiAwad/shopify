import 'package:flutter/material.dart';
import 'package:shopify/core/widgets/custom_text_form_field.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField(
      {super.key,
      required this.changeObsecure,
      required this.enableConfirmPassword,
      required this.passwordController});
  final bool enableConfirmPassword;
  final TextEditingController passwordController;
  final void Function() changeObsecure;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        if (value != null && value == passwordController.text) {
          return null;
        } else {
          return "your passwords are not matched  !";
        }
      },
      isObeseureText: enableConfirmPassword,
      label: "Confirm Password",
      maxLine: 1,
      suffixWidget: IconButton(
          onPressed: changeObsecure,
          icon: Icon(
            enableConfirmPassword
                ? Icons.visibility_off_rounded
                : Icons.visibility_rounded,
          )),
    );
  }
}