import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/core/widgets/custom_text.dart';
import 'package:shopify/features/home/data/model/product_model.dart';
import 'package:shopify/features/home/presentation/widgets/hot_offer_product_list.dart';
import 'package:shopify/features/home/presentation/widgets/image_in_page_view.dart';
import 'package:shopify/features/home/presentation/widgets/product_grid_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.productInPageView,
    required this.pageController,
    required this.changeState,
  });

  final List<ProductModel> productInPageView;
  final PageController pageController;
  final void Function() changeState;

  @override
  Widget build(BuildContext context) {
    //scrollabe items to ensure no error RenderFlex overflow
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title with multi lang
          CustomTextWithTitle(
            title: context.tr("mainProductTitle"),
          ),
          const SizedBox(
            height: 10,
          ),
          // page view that show scrollable images of products
          ProductImagesInPageView(
            productInPageView: productInPageView,
            pageController: pageController,
          ),
          const SizedBox(
            height: 10,
          ),
          // grid items of products
          GridViewOfProducts(
            changeState: changeState,
          ),
          const SizedBox(
            height: 10,
          ),
          // title with multi lang
          CustomTextWithTitle(
            title: context.tr("hotOfferTitle"),
          ),
          const SizedBox(
            height: 10,
          ),
          //horizontal list of products
          HotOfferProductList(changeState: changeState),
        ],
      ),
    );
  }
}
