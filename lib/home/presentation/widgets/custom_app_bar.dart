import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/constant.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/home/data/data.dart';

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
        Stack(
          alignment: Alignment.topRight,
          children: [
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: AppColors.black,
              ),
            ),
            //stacked above item to show counter of all cart products
            CircleAvatar(
              radius: 9,
              backgroundColor: AppColors.green,
              child: Text(
                "${mainProudcts.where((item) => item.proudctStatus).length}",
                style: AppFontStyles.regular12(context)
                    .copyWith(color: AppColors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
  //return size 
  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
