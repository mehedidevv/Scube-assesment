import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/components/customSize.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  // 🔹 Optional customization
  final double? textFontSize;
  final double? outerSize;
  final double? innerSize;

  const CustomCheckbox({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.textFontSize,
    this.outerSize,
    this.innerSize,
  });

  @override
  Widget build(BuildContext context) {
    final double _outer = outerSize ?? 20.h;
    final double _inner = innerSize ?? 12.h;
    final double _fontSize = textFontSize ?? 16.sp;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // Outer Circle
          Container(
            height: _outer,
            width: _outer,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.blue : Colors.grey,
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              height: _inner,
              width: _inner,
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.blue
                    : const Color(0XFFA5A7B9),
                shape: BoxShape.circle,
              ),
            ),
          ),
          widthBox10,
          // Label
          CustomText(
            text: label,
            fontSize: _fontSize,
            color: isSelected
                ? const Color(0XFF0096FC)
                : const Color(0XFF646984),
            fontWeight:
            isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
