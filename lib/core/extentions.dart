import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
  EdgeInsets get padding => MediaQuery.paddingOf(this);
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);
  Orientation get orientation => MediaQuery.orientationOf(this);

  bool get isLandscape => orientation == Orientation.landscape;
  bool get isPortrait => orientation == Orientation.portrait;
}

extension NavigationExtensions on BuildContext {
  // follow the instruction of flutter doc
  //1- first make animate route that take tha page we nave to also optional curve and duration between
  PageRouteBuilder<T> _animatedRoute<T>(Widget page,
      {Curve curve = Curves.easeInOut,
      Duration transationDuration = const Duration(milliseconds: 300),
      Duration reverseTransationDuration = const Duration(milliseconds: 300)}) {
    return PageRouteBuilder(
      transitionDuration: transationDuration,
      reverseTransitionDuration: reverseTransationDuration,
      // add the page where we navigate
      pageBuilder: (context, animation, secondaryAnimation) => page,
      // add transation for the page we set here fade transation accoring to requirement
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // while navigate to we set navigated to page with fade in the take the first animation.
        var fadeIn = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(parent: animation, curve: curve),
        );
        // while navigate to we set currento page with fade out the take the second animation.

        var fadeOut = Tween(begin: 1.0, end: 0.0).animate(
          CurvedAnimation(parent: secondaryAnimation, curve: curve),
        );
        //return the fade transation

        return FadeTransition(
          // the navigated to opacity
          opacity: fadeIn,
          // the current page
          child: FadeTransition(
            opacity: fadeOut,
            child: child,
          ),
        );
      },
    );
  }

  void pop<T extends Object?>([T? result]) {
    Navigator.pop(this, result);
  }

  void push(Widget page,
      {Curve curve = Curves.easeInOut,
      Duration transationDuration = const Duration(milliseconds: 300),
      Duration reverseTransationDuration = const Duration(milliseconds: 300)}) {
    Navigator.push(
      this,
      _animatedRoute(page,
          curve: curve,
          transationDuration: transationDuration,
          reverseTransationDuration: reverseTransationDuration),
    );
  }

  void pushReplacement(Widget page,
      {Curve curve = Curves.easeInOut,
      Duration transationDuration = const Duration(milliseconds: 300),
      Duration reverseTransationDuration = const Duration(milliseconds: 300)}) {
    Navigator.pushReplacement(
      this,
      _animatedRoute(page,
          curve: curve,
          transationDuration: transationDuration,
          reverseTransationDuration: reverseTransationDuration),
    );
  }

  void pushAndRemoveUntil(Widget page,
      {Curve curve = Curves.easeInOut,
      Duration transationDuration = const Duration(milliseconds: 300),
      Duration reverseTransationDuration = const Duration(milliseconds: 300)}) {
    Navigator.pushAndRemoveUntil(
      this,
      _animatedRoute(page,
          curve: curve,
          transationDuration: transationDuration,
          reverseTransationDuration: reverseTransationDuration),
      (route) => false,
    );
  }
}
