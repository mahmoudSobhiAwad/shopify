import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/custom_snack_bar.dart';
import 'package:shopify/features/home/data/model/product_model.dart';

class ProductDetailsItem extends StatelessWidget {
  const ProductDetailsItem({
    super.key,
    required this.productModel,
    required this.changeState,
  });
  final ProductModel productModel;
  final void Function() changeState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: SizedBox(
            width: context.screenWidth*0.3,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              productModel.productName,
              style: AppFontStyles.regular12(context),
            )),
        subtitle: Text("${productModel.proudctPrice} \$",
            style: AppFontStyles.regular12(context)),
        trailing: IconButton(
            onPressed: () {
              productModel.setProductCarted();
              changeState();
              showCustomSnackBar(
                  context,
                  productModel.proudctStatus
                      ? context.tr("snackBarAdd")
                      : context.tr("snackBarRemove"));
            },
            icon: Icon(
              productModel.proudctStatus
                  ? Icons.remove_shopping_cart_rounded
                  : Icons.add_shopping_cart_sharp,
            )));
  }
}

