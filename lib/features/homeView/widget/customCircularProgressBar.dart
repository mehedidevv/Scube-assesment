import 'package:flutter/material.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';

class CustomCircularProgress extends StatelessWidget {
  final Color outerColor; // Outer circle color
  final Color innerColor; // Inner circle color
  final double size;
  final String title;
  final String subtitle;

  const CustomCircularProgress({
    Key? key,
    required this.outerColor,
    required this.innerColor,
    required this.title,
    required this.subtitle,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer Circle (full 100% and colored)
          SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              value: 1, // Full circle
              strokeWidth: size * 0.16,
              valueColor: AlwaysStoppedAnimation(outerColor),
              backgroundColor: outerColor, // Fill entire circle with color
            ),
          ),

          // Inner Circle (on top, can have different color)
          SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              value: 1,
              strokeWidth: size * 0.12,
              valueColor: AlwaysStoppedAnimation(innerColor),
              backgroundColor: Colors.transparent,
            ),
          ),

          // Center Title & Subtitle
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: title,
                fontSize: size * 0.12,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF04063E),
              ),
              SizedBox(height: size * 0.02),
              CustomText(
                text: subtitle,
                fontSize: size * 0.16,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF04063E),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
