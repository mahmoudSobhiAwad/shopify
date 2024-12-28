import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/custom_decoration.dart';
import 'package:shopify/home/data/model/product_model.dart';
import 'package:shopify/home/presentation/widgets/custom_network_image.dart';
import 'package:shopify/home/presentation/widgets/product_details_item.dart';

class ProductItemInHorizontalList extends StatelessWidget {
  const ProductItemInHorizontalList(
      {super.key, required this.productModel, required this.changeState});
  final ProductModel productModel;
  final void Function() changeState;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 200,
        decoration: customDecorationInContainer(),
        child: Banner(
          message: "Discount",
          location: BannerLocation.topEnd,
          textStyle: AppFontStyles.regular12Light(context),
          color: AppColors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageInListAndPageView(
                imageUrl: productModel.productImage,
              ),
              ProductDetailsItem(
                changeState: changeState,
                productModel: productModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
