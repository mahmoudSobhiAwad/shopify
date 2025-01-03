import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';

class ChangeLangButton extends StatelessWidget {
  const ChangeLangButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // check which lang we use to switch between them
        if (context.locale == const Locale('en', 'US')) {
          context.setLocale(const Locale("ar", "EG"));
        } else {
          context.setLocale(const Locale("en", "US"));
        }
      },
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.peige, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Text(
            context.tr('lang'),
            style: AppFontStyles.bold18(context),
          )),
    );
  }
}
