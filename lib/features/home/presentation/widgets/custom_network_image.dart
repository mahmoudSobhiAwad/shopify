import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/widgets/error_builder_image.dart';

class CustomImageInListAndPageView extends StatelessWidget {
  const CustomImageInListAndPageView({
    super.key,
    this.imageUrl,
    this.fit,
  });
  final String? imageUrl;

  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    //make custom image to be in each item 
    return Image.network(
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(child: CircularProgressIndicator());
      },
      height: context.screenHeight * 0.1,
      imageUrl ?? "",
      fit: fit,
      errorBuilder: (context, _, s) {
        return const ErrorBuilderImage();
      },
    );
  }
}
