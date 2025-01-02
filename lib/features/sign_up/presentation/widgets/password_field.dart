import 'package:flutter/material.dart';
import 'package:shopify/core/widgets/custom_text_form_field.dart';

class PassworkFromField extends StatelessWidget {
  const PassworkFromField({
    super.key,
    required this.enablePassword,
    required this.passwordController,
    required this.changeObsecure,
  });
  final bool enablePassword;
  final TextEditingController passwordController;
  final void Function() changeObsecure;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      // validator to check if password is at least 6 chars
      validator: (value) {
        if (value != null && value.trim().isNotEmpty && value.length >= 6) {
          return null;
        } else {
          return "your password is too short !";
        }
      },
      controller: passwordController,
      isObeseureText: enablePassword,
      label: "Passowrd",
      maxLine: 1,
      // using obesucre changing visibilty to show or hide password
      suffixWidget: IconButton(
          onPressed: changeObsecure,
          icon: Icon(
            enablePassword
                ? Icons.visibility_off_rounded
                : Icons.visibility_rounded,
          )),
    );
  }
}
