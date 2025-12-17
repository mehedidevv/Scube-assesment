import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customAppbar.dart';
import 'package:scube_accessment/common/commonWidget/customCheckBoxWidget.dart';
import 'package:scube_accessment/common/components/customSize.dart';

import '../dataView/view/dataViewWidget.dart';
import '../revenueView/view/revenueWidget.dart';

class DataView extends StatefulWidget {
  const DataView({super.key});

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  /// only one value will be active
  String selectedView = 'data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SCM'),
      body: Container(
        width: double.infinity,
        color: const Color(0XFFD9E4F1),
        child: Stack(
          children: [
            Positioned(
              top: 50.h,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0XFFA5A7B9)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heightBox20,

                      if (selectedView == 'data')
                        const DataViewWidget()
                      else
                        const RevenueViewWidget(),
                    ],
                  ),
                ),
              ),
            ),

            /// Top selector
            Positioned(
              top: 30.h,
              left: 25.w,
              right: 25.w,
              child: Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(color: const Color(0XFFA5A7B9)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(
                      label: 'Data View',
                      isSelected: selectedView == 'data',
                      onTap: () {
                        setState(() {
                          selectedView = 'data';
                        });
                      },
                    ),
                    CustomCheckbox(
                      label: 'Revenue View',
                      isSelected: selectedView == 'revenue',
                      onTap: () {
                        setState(() {
                          selectedView = 'revenue';
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


