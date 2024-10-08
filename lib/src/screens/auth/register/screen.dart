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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  toLogin() {
    Get.back();
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
                    headingText: 'Welcome',
                    subHeadingText: 'Create an account or',
                    subHeadingTapText: 'Login',
                    subHeadingTrailingText: 'here.',
                    onTap: toLogin,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyTextFormField(
                    title: 'Email',
                  ),
                  const SizedBox(height: 20),
                  const MyTextFormField(
                    title: 'Password',
                  ),
                  const MyTextFormField(
                    title: 'Confirm Password',
                  ),
                  const SizedBox(height: 20),
                  TermsAndConditionCheckTile(isChecked: isChecked),
                  const SizedBox(height: 35),
                  FormPrimaryBtn(text: 'Create Account', onTap: onCreateTap),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  onCreateTap() {
    Get.offAndToNamed(AppRoutes.rMsgEmailVerification);
  }
}

class TermsAndConditionCheckTile extends StatelessWidget {
  const TermsAndConditionCheckTile({
    super.key,
    required this.isChecked,
  });

  final RxBool isChecked;

  toTermsAndConditions() {
    Get.toNamed(AppRoutes.rTermsAndConditions);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Checkbox(
              value: isChecked.value,
              onChanged: (v) {
                isChecked.value = v!;
              }),
          TextTapText(
            text: 'I agree to the ',
            tapText: 'Terms & Conditions',
            onTap: toTermsAndConditions,
          )
        ],
      ),
    );
  }
}
