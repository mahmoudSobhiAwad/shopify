import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';

class BackGroundBlurLayer extends StatelessWidget {
  const BackGroundBlurLayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // according to ui on figma i adjust that positioned
    return Positioned(
      top: -99,
      child: Container(
        //aslo set diemnssion according to design
        height: 216,
        width: 216,
        decoration: const BoxDecoration(
          // make shape like circel
          shape: BoxShape.circle,
          boxShadow: [
            // the shadow layer properties
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

