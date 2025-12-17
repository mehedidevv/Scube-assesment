import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/commonWidget/customText.dart';

class RevenueViewWidget extends StatelessWidget {
  const RevenueViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          CustomText(
            text: 'Revenue View',
          ),

        ],
      ),
    );
  }
}