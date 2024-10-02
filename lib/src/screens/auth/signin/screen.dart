import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pollutant/src/screens/auth/shared/form_card.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/terms_of_use_btn.dart';
import 'package:pollutant/src/screens/shared/logo.dart';

import '../shared/text_form_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  toRegister() {}
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
                  SizedBox(
                    height: 80,
                  ),
                  MyTextFormField(
                    title: 'Email',
                  ),
                  SizedBox(height: 20),
                  MyTextFormField(
                    title: 'Password',
                    trailingTitile: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
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
