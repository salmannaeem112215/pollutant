import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/routes/app_routes.dart';
import 'package:pollutant/src/screens/auth/shared/form_card.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';
import 'package:pollutant/src/screens/auth/shared/terms_of_use_btn.dart';
import 'package:pollutant/src/screens/shared/logo.dart';

import '../shared/text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  toLogin() {
    Get.back();
  }

  toSubmitTap() {
    Get.offAndToNamed(AppRoutes.rMsgPasswordChanged);
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
            const SizedBox(height: 50),
            const MyLogo(size: 120),
            const SizedBox(height: 50),
            FormCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeadingSubheading(
                    headingText: 'Change Password',
                    subHeadingText: 'Or',
                    subHeadingTapText: 'Login',
                    onTap: toLogin,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyTextFormField(
                    title: 'New Password',
                  ),
                  const SizedBox(height: 20),
                  const MyTextFormField(
                    title: 'Confirm Password',
                  ),
                  const SizedBox(height: 35),
                  FormPrimaryBtn(text: 'Submit', onTap: toSubmitTap),
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
