import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/routes/app_routes.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';

class EmailVerificationMessage extends StatelessWidget {
  const EmailVerificationMessage({super.key, this.email});
  final String? email;
  onResendTap() {
    Get.showSnackbar(GetSnackBar(
      maxWidth: 350,
      borderRadius: 8,
      margin: EdgeInsets.only(bottom: 20),
      duration: Duration(
        seconds: 1,
        milliseconds: 200,
      ),
      message: 'Code has been send',
    ));
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
                  headingText: 'Verify Your Email',
                  subHeadingText: 'We have sent an email to',
                  subHeadingTapText: email ?? 'email@gmail.com',
                  subHeadingTrailingText:
                      'please follow the link to verify your account',
                ),
                const SizedBox(height: 80),
                TextTapText(
                  text: "Didn't recive an email?",
                  tapText: 'Resend',
                  onTap: onResendTap,
                ),
                const SizedBox(height: 40),
                FormPrimaryBtn(
                    text: 'Go Back',
                    onTap: () {
                      Get.offAndToNamed(AppRoutes.rLogin);
                    }),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
