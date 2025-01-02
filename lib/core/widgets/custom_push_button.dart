import 'package:flutter/material.dart';

class CustomPushContainerButton extends StatelessWidget {
  const CustomPushContainerButton({
    super.key,
    this.iconSize,
    this.pushButtomTextStyle,
    this.childInstead,
    this.borderRadius,
    this.padding,
    required this.pushButtomText,
    this.onTap,
    this.color,
  });
  final String pushButtomText;
  final TextStyle? pushButtomTextStyle;
  final void Function()? onTap;
  final Color? color;
  final EdgeInsets? padding;
  final double? borderRadius;
  final Widget? childInstead;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white,
      highlightColor: Colors.white,
      focusColor: Colors.white,
      splashColor: Colors.white,
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: color),
        child: childInstead ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Text(
                  pushButtomText,
                  style: pushButtomTextStyle,
                )),
              ],
            ),
      ),
    );
  }
}
