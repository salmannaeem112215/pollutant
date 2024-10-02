import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollutant/src/routes/app_routes.dart';
import 'package:pollutant/src/screens/auth/shared/form_primary_btn.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 40),
            FormPrimaryBtn(
                text: 'Logout',
                onTap: () {
                  Get.offAllNamed(AppRoutes.rLogin);
                }),
            SizedBox(height: 40),
            FormPrimaryBtn(
                text: 'Error 404',
                onTap: () {
                  Get.toNamed(AppRoutes.rErr404);
                }),
            SizedBox(height: 40),
            FormPrimaryBtn(
                text: 'Error System',
                onTap: () {
                  Get.toNamed(AppRoutes.rErrSystem);
                }),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
