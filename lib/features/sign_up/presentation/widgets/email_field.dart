import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/widgets/custom_text_form_field.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        if (value != null && value.trim().isNotEmpty && value.contains('@')) {
          return null;
        } else {
          return "email  must contain @ !";
        }
      },
      label: "Email",
      textInputType: TextInputType.emailAddress,
      borderColor: AppColors.veryLightGray,
      maxLine: 1,
    );
  }
}
