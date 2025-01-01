import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopify/core/app_colors.dart';
import 'package:shopify/features/home/data/data.dart';
import 'package:shopify/features/home/data/model/product_model.dart';
import 'package:shopify/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:shopify/features/home/presentation/widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // init current page to view
  Timer? _timer; // init timer to detect each scroll after time
  List<ProductModel> productInPageView = mainProudcts
      .where((item) => item.productImage != null)
      .toList(); // get the images to be shown in page view , and ensure all products that has image
  // the first implemented fucntion in stateful widget
  @override
  void initState() {
    super.initState();
    // call function to start
    _startAutoScroll();
  }

  void _startAutoScroll() {
    // use perodic duration to scroll after 5 sec
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < productInPageView.length - 1) {
        // as long as curr page less than lenght , we can forward
        _currentPage++;
      } else {
        // back to zero
        _currentPage = 0; // Reset to first page
      }
      // in each back or forward we animate to the next page
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  // very important function , after navigate from this page, we have to cancel perodic time and close page controller.
  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // add back ground color
        backgroundColor: AppColors.veryLightGray,
        appBar:
            const CustomAppBar(), // using sized widget to make a separate widget
        body: HomeBody(
          changeState: () {
            // method to recreate page
            setState(() {});
          },
          // pass the current showing proudct in page view
          productInPageView: productInPageView,
          // controller must attached to the pageview
          pageController: _pageController,
        ),
      ),
    );
  }
}
