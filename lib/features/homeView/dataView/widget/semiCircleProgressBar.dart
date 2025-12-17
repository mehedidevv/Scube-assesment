import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import 'package:scube_accessment/features/homeView/dataView/widget/semiCirclePainter.dart';

class SemiCircularGauge extends StatelessWidget {
  final double value;
  final double maxValue;
  final String unitText;
  final Color progressColor;
  final Color backgroundColor;
  final double strokeWidth;

  const SemiCircularGauge({
    super.key,
    required this.value,
    required this.maxValue,
    required this.unitText,
    this.progressColor = const Color(0XFF4A8CFF),
    this.backgroundColor = const Color(0XFFE3EEFF),
    this.strokeWidth = 12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.w,
      height: 100.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(180.w, 130.h),
            painter: SemiCirclePainter(
              value: value,
              maxValue: maxValue,
              progressColor: progressColor,
              backgroundColor: backgroundColor,
              strokeWidth: strokeWidth,
            ),
          ),

          /// Center Text
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: value.toStringAsFixed(2),
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0XFF04063E),
              ),

              CustomText(
                text: unitText,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF04063E),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
