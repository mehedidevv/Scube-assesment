import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/commonWidget/customText.dart';

class LoadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12.r),
      ),
      alignment: Alignment.center,
      child: CustomText(
        text: 'Load Widget Content',
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: Colors.green,
      ),
    );
  }
}