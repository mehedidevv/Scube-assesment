import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomCheckbox({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // Circle Checkbox
          Container(
            height: 20.h,
            width: 20.h,
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.grey[300],
              shape: BoxShape.circle, // <-- circle shape
              border: Border.all(
                color: isSelected ? Colors.blue : Colors.grey,
                width: 2,
              ),
            ),
            child: isSelected
                ? Icon(Icons.check, color: Colors.white, size: 18.sp)
                : null,
          ),
          SizedBox(width: 12.w),
          // Label
          CustomText(
            text: label,
            fontSize: 16.sp,
            color: isSelected ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

