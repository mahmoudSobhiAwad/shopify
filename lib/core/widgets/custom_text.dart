import 'package:flutter/widgets.dart';
import 'package:shopify/core/font_styles.dart';

class CustomTextWithTitle extends StatelessWidget {
  const CustomTextWithTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        title,
        style: AppFontStyles.bold18(context),
      ),
    );
  }
}
