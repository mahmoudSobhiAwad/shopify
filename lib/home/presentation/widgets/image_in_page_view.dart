import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/home/data/model/product_model.dart';
import 'package:shopify/home/presentation/widgets/custom_network_image.dart';

class ProductImagesInPageView extends StatelessWidget {
  const ProductImagesInPageView({
    super.key,
    required this.productInPageView,
    required this.pageController,
  });

  final List<ProductModel> productInPageView;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.25,
      child: PageView.builder(
          itemCount: productInPageView.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return CustomImageInListAndPageView(
              imageUrl: "${productInPageView[index].productImage}",
              fit: BoxFit.fill,
            );
          }),
    );
  }
}
