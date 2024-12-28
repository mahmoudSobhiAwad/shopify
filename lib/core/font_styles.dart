import 'package:flutter/widgets.dart';
import 'package:shopify/core/constant.dart';

class AppFontStyles {
  static TextStyle logoBold24(BuildContext context) {
    return const TextStyle(
      fontFamily: fontFamilyLogo,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700, // bold
      fontSize: 24,
    );
  }

  static TextStyle bold18(BuildContext context) {
    return const TextStyle(
      
      fontWeight: FontWeight.w700, // bold
      fontSize: 18,
    );
  }
  static TextStyle bold16(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.w700, // bold
      fontSize: 18,
    );
  }
  static TextStyle regular12(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.w400, // bold
      fontSize: 12,
    );
  }
  static TextStyle regular12Light(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.w400, // bold
      fontSize: 12,
      color:Color(0xffffffff),
    );
  }
}
