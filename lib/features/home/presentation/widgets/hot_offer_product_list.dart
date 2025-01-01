import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/features/home/data/data.dart';
import 'package:shopify/features/home/presentation/widgets/product_item_in_hot_offer_list.dart';

class HotOfferProductList extends StatelessWidget {
  const HotOfferProductList({
    super.key,
    required this.changeState,
  });

  final void Function() changeState;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.25,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductItemInHorizontalList(
                changeState: changeState,
                productModel:
                    mainProudcts.reversed.toList().sublist(0, 5)[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 12,
            );
          },
          itemCount: 5),
    );
  }
}
