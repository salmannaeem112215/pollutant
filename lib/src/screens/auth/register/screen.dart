import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  toRegister() {}

  final RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    headingText: 'Welcome',
                    subHeadingText: 'Create an account or',
                    subHeadingTapText: 'Login',
                    subHeadingTrailingText: 'here.',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MyTextFormField(
                    title: 'Email',
                  ),
                  SizedBox(height: 20),
                  MyTextFormField(
                    title: 'Password',
                  ),
                  MyTextFormField(
                    title: 'Confirm Password',
                  ),
                  SizedBox(height: 20),
                  TermsAndConditionCheckTile(isChecked: isChecked),
                  SizedBox(height: 35),
                  FormPrimaryBtn(text: 'Signup', onTap: onSingupTap),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const TermsOfUseBtn(),
          ],
        ),
      ),
    );
  }

  onSingupTap() {}
}

class TermsAndConditionCheckTile extends StatelessWidget {
  const TermsAndConditionCheckTile({
    super.key,
    required this.isChecked,
  });

  final RxBool isChecked;

  toTermsAndConditions() {}

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
          RichText(
              text: TextSpan(
                  text: 'I agree to the ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                TextSpan(
                  text: 'Terms & Conditions ',
                  recognizer: TapGestureRecognizer()
                    ..onTap = toTermsAndConditions,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
