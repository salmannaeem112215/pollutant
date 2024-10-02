import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/routes/app_routes.dart';

class TermsOfUseBtn extends StatelessWidget {
  const TermsOfUseBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.toNamed(AppRoutes.rTermsOfUser);
      },
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
