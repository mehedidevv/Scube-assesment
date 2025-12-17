import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/commonWidget/customText.dart';
import '../../../common/components/customSize.dart';

class SingleSourceWidget extends StatelessWidget {
  final String imagePath;
  final Color indicatorColor;
  final String title;
  final String statusText;
  final Color statusColor;
  final String subtitle1;
  final String subtitleValue1;
  final String subtitle2;
  final String subtitleValue2;
  final VoidCallback onTap;

  const SingleSourceWidget({
    super.key,
    required this.imagePath,
    required this.indicatorColor,
    required this.title,
    required this.statusText,
    required this.statusColor,
    required this.subtitle1,
    required this.subtitleValue1,
    required this.subtitle2,
    required this.subtitleValue2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFD9E4F1),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            width: 1,
            color: Color(0xFFA5A7B9),
          ),
        ),
        child: Row(
          children: [
            // Left Icon
            Container(
              height: 30.h,
              width: 30.w,
              child: Image.asset(imagePath),
            ),

            widthBox14,

            // Text section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First Row: Indicator + Title + Status
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: indicatorColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      widthBox10,
                      CustomText(
                        text: title,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF04063E),
                      ),
                      widthBox10,
                      CustomText(
                        text: statusText,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: statusColor,
                      ),
                    ],
                  ),
                  heightBox5,

                  // Subtitle 1
                  Row(
                    children: [
                      CustomText(
                        text: "$subtitle1 :",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF646984),
                      ),
                      widthBox5,
                      CustomText(
                        text: subtitleValue1,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF646984),
                      ),
                    ],
                  ),
                  heightBox5,

                  // Subtitle 2
                  Row(
                    children: [
                      CustomText(
                        text: "$subtitle2 :",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF646984),
                      ),
                      widthBox5,
                      CustomText(
                        text: subtitleValue2,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF646984),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF646984),
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
