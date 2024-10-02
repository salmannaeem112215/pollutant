import 'package:flutter/material.dart';

class TermsOfUseBtn extends StatelessWidget {
  const TermsOfUseBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Terms of Use',
        style: TextStyle(
          color: Colors.grey.shade500,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
