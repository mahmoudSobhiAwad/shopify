import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';

class BackGroundBlurLayer extends StatelessWidget {
  const BackGroundBlurLayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -99,
      left: -33,
      child: Container(
        height: 216,
        width: 216,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: AppColors.peige,
                blurRadius: 270,
                blurStyle: BlurStyle.normal),
          ],
        ),
      ),
    );
  }
}
