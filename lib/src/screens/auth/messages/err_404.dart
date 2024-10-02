import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';
import 'package:pollutant/src/theme/icon.dart';

class Error404Message extends StatelessWidget {
  const Error404Message({
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
              Image.asset(
                MyIcon.er404,
                height: 200,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Seems there is nothing here",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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
