import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/features/home/data/data.dart';
import 'package:shopify/features/home/presentation/widgets/product_item_in_grid.dart';

class GridViewOfProducts extends StatelessWidget {
  const GridViewOfProducts({
    super.key,
    required this.changeState,
  });
  final void Function() changeState;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.4,
      child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          itemCount: mainProudcts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ProductItemInGrid(
                changeState: changeState,
                productModel: mainProudcts[index],
              ),
            );
          }),
    );
  }
}
