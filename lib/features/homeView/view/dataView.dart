import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/common/commonWidget/customAppbar.dart';
import 'package:scube_accessment/common/commonWidget/customCheckBoxWidget.dart';

class DataView extends StatefulWidget {
  const DataView({super.key});

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  // Move isChecked to the state
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = kToolbarHeight;
    final topPadding = MediaQuery.of(context).padding.top;
    final remainingHeight = screenHeight - appBarHeight - topPadding - 50.h;

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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFA5A7B9),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60.h),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 30.h,
              left: 20.w,
              right: 20.w,
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFA5A7B9),
                  ),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Row(
                    children: [
                      CustomCheckbox(
                        label: 'Data View',
                        isSelected: isChecked,
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),

                      CustomCheckbox(
                        label: 'Revenue View',
                        isSelected: isChecked,
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

