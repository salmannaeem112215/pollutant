import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';

class PasswordChangedMessage extends StatelessWidget {
  const PasswordChangedMessage({
    super.key,
  });
  onSignInTap() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                HeadingSubheading(
                  headingText: 'Password is changed',
                  subHeadingText:
                      'Your password is successfully changed. Please Sign in to your account.',
                ),
                const SizedBox(height: 80),
                FormPrimaryBtn(text: 'Sign In', onTap: onSignInTap),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
