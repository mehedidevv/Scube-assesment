import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_accessment/core/utils/appImages.dart';

import '../../../../common/commonWidget/customText.dart';
import '../../../../common/components/customSize.dart';
import '../../dataView/widget/semiCircleProgressBar.dart';
import '../widget/customRowWidget.dart';

class RevenueViewWidget extends StatefulWidget {
  const RevenueViewWidget({super.key});

  @override
  State<RevenueViewWidget> createState() => _RevenueViewWidgetState();
}

class _RevenueViewWidgetState extends State<RevenueViewWidget>
    with TickerProviderStateMixin {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        heightBox20,

        Center(
          child: SemiCircularGauge(
            number: 88974,
            value: 70,
            maxValue: 100,
            unitText: 'tk',
          ),
        ),

        heightBox20,

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0XFFA5A7B9)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [

              /// ================= HEADER (FIXED PART) =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bar_chart,
                            color: Color(0XFF646984),
                          ),
                          widthBox10,
                           CustomText(
                            text: 'Data & Cost Info',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0XFF04063E),
                          ),
                        ],
                      ),
                    ),

                    /// Expand / Collapse Button
                    InkWell(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: AnimatedRotation(
                        turns: isExpanded ? 0.5 : 0.0,
                        duration: const Duration(milliseconds: 300),
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Color(0XFF0096FC),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.doubleArrow,
                              height: 16,
                              width: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              if (isExpanded)
                Container(
                  height: 1,
                  //margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: const Color(0XFFA5A7B9),
                ),


              /// ================= EXPANDABLE CONTENT =================
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: isExpanded
                    ? Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 20),
                  child: Column(
                    children: [
                      CustomRowWidget(
                        data: 'Data 1',
                        value: '2798.50 (29.53%)',
                      ),
                      CustomRowWidget(
                        data: 'Cost 1',
                        value: '35689 ৳',
                      ),

                      heightBox10,

                      CustomRowWidget(
                        data: 'Data 2',
                        value: '2798.50 (29.53%)',
                      ),
                      CustomRowWidget(
                        data: 'Cost 2',
                        value: '35689 ৳',
                      ),

                      heightBox10,

                      CustomRowWidget(
                        data: 'Data 3',
                        value: '2798.50 (29.53%)',
                      ),
                      CustomRowWidget(
                        data: 'Cost 3',
                        value: '35689 ৳',
                      ),

                      heightBox10,

                      CustomRowWidget(
                        data: 'Data 4',
                        value: '2798.50 (29.53%)',
                      ),
                      CustomRowWidget(
                        data: 'Cost 4',
                        value: '35689 ৳',
                      ),
                    ],
                  ),
                )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
