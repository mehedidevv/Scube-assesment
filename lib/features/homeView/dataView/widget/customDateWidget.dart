import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scube_accessment/common/commonWidget/customTextField.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import 'package:scube_accessment/features/homeView/dataView/widget/singleEnergyWidget.dart';
import '../../../../common/commonWidget/customText.dart';
import '../../controller/dateController.dart';

class CustomDateWidget extends StatelessWidget {
  CustomDateWidget({super.key});

  // Dummy list of energy data
  final List<Map<String, dynamic>> energyDataList = [
    {
      'color': Color(0XFF0096FC),
      'date': 'Data A',
      'data': 2798.50,
      'percentage': 29.53,
      'cost': 35689,
    },
    {
      'color': Color(0XFF7BD7FF),
      'date': 'Data B',
      'data': 1987.75,
      'percentage': 20.15,
      'cost': 24500,
    },
    {
      'color': Color(0XFF9747FF),
      'date': 'Data C',
      'data': 3120.00,
      'percentage': 32.00,
      'cost': 40000,
    },
    {
      'color': Color(0XFFFF9A00),
      'date': 'Data D',
      'data': 1200.25,
      'percentage': 10.32,
      'cost': 15000,
    },
  ];


  final DateController dateController = Get.put(DateController());


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              child: Obx(() => CustomTextField(
                controller: TextEditingController(text: dateController.fromDate.value),
                hintText: 'From Date',
                showObscure: false,
                postfixIcon: Icons.calendar_today_outlined,
                onPostfixTap: () {
                  dateController.pickDate(context, true);
                },
              )),
            ),
            widthBox10,
            Expanded(
              child: Obx(() => CustomTextField(
                controller: TextEditingController(text: dateController.toDate.value),
                hintText: 'To Date',
                showObscure: false,
                postfixIcon: Icons.calendar_today_outlined,
                onPostfixTap: () {
                  dateController.pickDate(context, false);
                },
              )),
            ),
          ],
        ),


        heightBox14,
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0XFFA5A7B9)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Energy Chart',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF04063E),
                  ),
                  widthBox20,
                  CustomText(
                    text: '20.05 kw',
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF04063E),
                  ),
                ],
              ),

              heightBox20,

              /// List of SingleEnergyWidget
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: energyDataList.length,
                separatorBuilder: (context, index) => heightBox14,
                itemBuilder: (context, index) {
                  final item = energyDataList[index];
                  return SingleEnergyWidget(
                    color: item['color'],
                    date: item['date'],
                    data: item['data'],
                    percentage: item['percentage'],
                    cost: item['cost'],
                  );
                },
              ),
            ],
          ),
        ),

        heightBox10,

        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0XFFA5A7B9)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Energy Chart',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF04063E),
                  ),
                  widthBox20,
                  CustomText(
                    text: '5.53 kw',
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF04063E),
                  ),
                ],
              ),

              heightBox20,

              /// List of SingleEnergyWidget
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: energyDataList.length,
                separatorBuilder: (context, index) => heightBox14,
                itemBuilder: (context, index) {
                  final item = energyDataList[index];
                  return SingleEnergyWidget(
                    color: item['color'],
                    date: item['date'],
                    data: item['data'],
                    percentage: item['percentage'],
                    cost: item['cost'],
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
