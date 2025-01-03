import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/core/widgets/custom_text_form_field.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      // validator function to check if name contain in first letter is capital
      validator: (value) {
        if (value != null &&
            value.trim().isNotEmpty &&
            value[0] == value[0].toUpperCase()) {
          return null;
        } else {
          return " the first in character name must be capital !";
        }
      },
      label:  context.tr('name'),
      maxLine: 1,
    );
  }
}
