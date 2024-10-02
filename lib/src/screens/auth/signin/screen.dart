import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/routes/app_routes.dart';
import 'package:pollutant/src/screens/auth/shared/form_card.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';
import 'package:pollutant/src/screens/auth/shared/terms_of_use_btn.dart';
import 'package:pollutant/src/screens/shared/logo.dart';

import '../shared/text_form_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  toRegister() {
    Get.toNamed(AppRoutes.rRegister);
  }

  onSigninTap() {
    Get.offAllNamed(AppRoutes.rMain);
  }

  onForgetPassword() {
    Get.toNamed(AppRoutes.rRecoverPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const SafeArea(
        child: TermsOfUseBtn(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            MyLogo(size: 120),
            SizedBox(height: 50),
            FormCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeadingSubheading(
                    headingText: 'Sign In',
                    subHeadingText: 'or Create',
                    subHeadingTapText: 'an Account',
                    onTap: toRegister,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MyTextFormField(
                    title: 'Email',
                  ),
                  SizedBox(height: 20),
                  MyTextFormField(
                    title: 'Password',
                    trailingTitile: GestureDetector(
                      onTap: onForgetPassword,
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  FormPrimaryBtn(text: 'Sign In', onTap: onSigninTap),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
