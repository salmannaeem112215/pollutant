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

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  toLogin() {
    Get.back();
  }

  onSubmitTap() {
    Get.offAndToNamed(AppRoutes.rChangePassword);
  }

  final RxBool isChecked = false.obs;

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
            const SizedBox(height: 50),
            const MyLogo(size: 120),
            const SizedBox(height: 50),
            FormCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeadingSubheading(
                    headingText: 'Recover Password',
                    subHeadingText: 'Or',
                    subHeadingTapText: 'Login',
                    onTap: toLogin,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyTextFormField(
                    title: 'Email/  Username',
                  ),
                  const SizedBox(height: 35),
                  FormPrimaryBtn(text: 'Submit', onTap: onSubmitTap),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
