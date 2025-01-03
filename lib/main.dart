import 'package:flutter/material.dart';
import 'package:shopify/home/presentation/home_view.dart';

//enrty point of app
void main() {
  runApp(const Shopify());
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
