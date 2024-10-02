import 'package:flutter/material.dart';
import 'package:pollutant/src/theme/icon.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key, this.size});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MyIcon.logo,
      height: size,
    );
  }
}
