import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customAppbar.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/components/customSize.dart';

import '../../../core/utils/appImages.dart';

class NoDataView extends StatelessWidget {
  const NoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(
        title: 'SCM',
        fontSize: 16,
        suffixIconAsset: AppImages.notification,
      ),


      body: Container(
        padding: EdgeInsets.all(16),
        height: double.infinity,
        width: double.infinity,
        color: const Color(0XFFD9E4F1),


        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              border: Border.all(
              width: 1,
            color: Color(0XFFB6B8D0)
          )
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 193.h,
                width: 260.w,
                child: Image.asset(AppImages.noData),
              ),

              heightBox10,

              CustomText(
                text: 'No data is here,\n'
                    'please wait.',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0XFF5E5E5E),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}
