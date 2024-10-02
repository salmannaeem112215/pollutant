import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/screens/auth/shared/heading_subheading.dart';
import 'package:pollutant/src/theme/icon.dart';

class ErrorSystemMessage extends StatelessWidget {
  const ErrorSystemMessage({
    super.key,
  });
  onReturnHome() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const HeadingSubheading(
                headingText: 'System Error ',
                subHeadingText: 'Something went wrong! Please try again later.',
              ),
              const SizedBox(height: 50),
              Image.asset(
                MyIcon.erSystem,
                height: 200,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 50),
                  FormPrimaryBtn(text: 'Return Home', onTap: onReturnHome),
                  const SizedBox(height: 50),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
