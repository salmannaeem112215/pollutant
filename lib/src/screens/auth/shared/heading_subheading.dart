import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeadingSubheading extends StatelessWidget {
  const HeadingSubheading(
      {super.key,
      required this.headingText,
      required this.subHeadingText,
      required this.subHeadingTapText,
      this.onTap,
      this.subHeadingTrailingText});
  final String headingText;
  final String subHeadingText;
  final String? subHeadingTapText;
  final String? subHeadingTrailingText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          headingText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: subHeadingText + (subHeadingTapText != null ? " " : ''),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontSize: 16,
            ),
            children: [
              if (subHeadingTapText != null)
                TextSpan(
                  text: subHeadingTapText,
                  recognizer: TapGestureRecognizer()..onTap = onTap,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              if (subHeadingTrailingText != null)
                TextSpan(
                  text: ' $subHeadingTrailingText',
                ),
            ],
          ),
        ),
      ],
    );
  }
}
