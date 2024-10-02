import 'package:flutter/material.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';

class LogoutMessage extends StatelessWidget {
  const LogoutMessage({
    super.key,
  });
  onSignInTap() {}
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
                const HeadingSubheading(
                  headingText: 'You have successfully logged out !',
                ),
                const SizedBox(height: 60),
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
