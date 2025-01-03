import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/constant.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/chang_lang_button.dart';
import 'package:shopify/features/home/data/data.dart';

//using PreferredSizeWidget, becuase app bar in scaffold has constant size so to import it outside scaffold
//, we have to give fixed size
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.veryLightGray,
      title: Text(
        "Shopify",
        style: AppFontStyles.logoBold24(context),
      ),
      //add logo of app
      leading: Image.asset(
        logo,
      ),

      //action contain the most button in app bar
      actions: [
        // use badge widget instead of stack widget to make code less
        Badge.count(
          backgroundColor: AppColors.green,
          count: mainProudcts.where((item) => item.proudctStatus).length,
          alignment: AlignmentDirectional.topEnd,
          child: const Icon(
            Icons.shopping_cart_rounded,
            color: AppColors.black,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        // insert change lang button
        const ChangeLangButton(),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  //return size
  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
