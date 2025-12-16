import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/commonWidget/customText.dart';

class InstrumentComponentWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const InstrumentComponentWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(14.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1,
            color: const Color(0XFFB6B8D0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.r,
              width: 24.r,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(width: 10.w),

            Expanded(
              child: CustomText(
                text: title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF646984),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
