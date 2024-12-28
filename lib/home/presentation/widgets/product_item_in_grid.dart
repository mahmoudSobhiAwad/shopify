import 'package:flutter/material.dart';
import 'package:shopify/core/widgets/custom_decoration.dart';
import 'package:shopify/home/data/model/product_model.dart';
import 'package:shopify/home/presentation/widgets/custom_network_image.dart';
import 'package:shopify/home/presentation/widgets/product_details_item.dart';

class ProductItemInGrid extends StatelessWidget {
  const ProductItemInGrid({
    super.key,
    required this.changeState,
    required this.productModel,
  });

  final void Function() changeState;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: customDecorationInContainer(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ],
    );
  }
}
