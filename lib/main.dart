import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/features/sign_up/presentation/sign_up_view.dart';

//enrty point of app
void main() async {
  // ensure that any future operation will be done before launch app
  WidgetsFlutterBinding.ensureInitialized();
  // init easy localiztion
  await EasyLocalization.ensureInitialized();

  runApp(
      // make it the first widget to run
      EasyLocalization(
          // handle the supported locales
          supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
          path: 'asset/langs',
          // incase the local is not from the inserted we set like default locale
          fallbackLocale: const Locale('en', 'US'),
          child: const Shopify()));
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // that related with widget localize like control of align for widget that differ in each lan
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      // the current picked local
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // make the home be sign up
      home: const SignUpView(),
    );
  }
}
