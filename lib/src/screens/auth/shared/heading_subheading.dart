import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeadingSubheading extends StatelessWidget {
  const HeadingSubheading(
      {super.key,
      required this.headingText,
      this.subHeadingText,
      this.subHeadingTapText,
      this.onTap,
      this.subHeadingTrailingText});
  final String headingText;
  final String? subHeadingText;
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
            text:
                (subHeadingText ?? '') + (subHeadingTapText != null ? " " : ''),
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
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: onTap == null ? Colors.grey.shade800 : Colors.blue,
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

class TextTapText extends StatelessWidget {
  const TextTapText(
      {super.key, required this.text, required this.tapText, this.onTap});
  final String text;
  final String tapText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "$text ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w600,
            ),
            children: [
          TextSpan(
            text: tapText,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          )
        ]));
  }
}
