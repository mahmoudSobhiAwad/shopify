import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopify/core/extentions.dart';
import 'package:shopify/core/font_styles.dart';
import 'package:shopify/core/widgets/chang_lang_button.dart';
import 'package:shopify/features/sign_up/presentation/widgets/confirm_password.dart';
import 'package:shopify/features/sign_up/presentation/widgets/email_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/name_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/password_field.dart';
import 'package:shopify/features/sign_up/presentation/widgets/sign_up_button.dart';

//make statefule widget to hadle changing in state
class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  //define global key to check validation in fields
  final formKey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();
  //to handle changes in obsecure text visibilty
  bool enablePassword = false;
  bool enableConfirmPassword = false;
  @override
  Widget build(BuildContext context) {
    // use single child scroll view to handle keyboard overflow
    return SingleChildScrollView(
      // add some padding around form
      padding: EdgeInsets.only(
          top: context.screenHeight * 0.025, left: 10, right: 10, bottom: 20),
      child: Form(
        key: formKey,
        child: Column(
          // new in flutter to add spacing between each widget instead of boring sized box between each
          spacing: 16,
          children: [
            // add lang button to toggle between langs
            const Align(
              alignment: AlignmentDirectional.topEnd,
              child: ChangeLangButton(),
            ),
            // header text
            Text(
              context.tr('createAccTitle'),
              style: AppFontStyles.bold26(context),
            ),
            //secondary text
            Text(
              context.tr('createAccSubTitle'),
              style: AppFontStyles.regular16(context),
            ),
            const SizedBox(
              height: 20,
            ),
            // name field
            const NameTextFormField(),
            // email field
            const EmailTextFormField(),
            // password field
            PassworkFromField(
              enablePassword: enablePassword,
              passwordController: passwordController,
              changeObsecure: () {
                enablePassword = !enablePassword;
                setState(() {});
              },
            ),
            //confirm password field
            ConfirmPasswordField(
                changeObsecure: () {
                  enableConfirmPassword = !enableConfirmPassword;
                  setState(() {});
                },
                enableConfirmPassword: enableConfirmPassword,
                passwordController: passwordController),
            const SizedBox(
              height: 20,
            ),
            // sign up button
            SignUpButton(formKey: formKey),
          ],
        ),
      ),
    );
  }
}
