import 'package:flutter/material.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import '../../../../common/commonWidget/customCheckBoxWidget.dart';
import '../widget/customDateWidget.dart';
import '../widget/semiCircleProgressBar.dart';
import '../widget/todayDataWidget.dart';

class DataViewWidget extends StatefulWidget {
  const DataViewWidget({super.key});

  @override
  State<DataViewWidget> createState() => _DataViewWidgetState();
}

class _DataViewWidgetState extends State<DataViewWidget> {
  // By default Today Data selected
  bool isTodaySelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          heightBox20,

          // Semi-circular gauge
          Center(
            child: SemiCircularGauge(
              value: 70,
              maxValue: 100,
              unitText: 'kWh/Sqft',
            ),
          ),

          heightBox14,

          // Checkbox Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCheckbox(
                label: 'Today Data',
                textFontSize: 14,
                isSelected: isTodaySelected,
                onTap: () {
                  setState(() {
                    isTodaySelected = true;
                  });
                },
              ),
              widthBox20,
              CustomCheckbox(
                label: 'Custom Date Data',
                textFontSize: 14,
                isSelected: !isTodaySelected,
                onTap: () {
                  setState(() {
                    isTodaySelected = false;
                  });
                },
              ),
            ],
          ),

          heightBox20,

          // Show corresponding widget
          isTodaySelected ? TodayDataWidget() : CustomDateWidget(),
        ],
      ),
    );
  }
}



