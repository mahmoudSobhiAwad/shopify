import 'package:easy_localization/easy_localization.dart';
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
      //vaidator to check if email contain @
      validator: (value) {
        if (value != null && value.trim().isNotEmpty && value.contains('@')) {
          return null;
        } else {
          return "email  must contain @ !";
        }
      },
      label: context.tr('email'),
      textInputType: TextInputType.emailAddress,
      borderColor: AppColors.veryLightGray,
      maxLine: 1,
    );
  }
}
