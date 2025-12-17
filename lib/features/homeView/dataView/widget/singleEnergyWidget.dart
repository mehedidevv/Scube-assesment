import 'package:flutter/material.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/components/customSize.dart';

class SingleEnergyWidget extends StatelessWidget {
  final Color color;
  final String date;
  final double data;
  final double percentage;
  final int cost;

  const SingleEnergyWidget({
    super.key,
    required this.color,
    required this.date,
    required this.data,
    required this.percentage,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color(0XFFB6B8D0),
          width: 1
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),

              // Date text
              CustomText(
                text:  date,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0XFF04063E),
              ),

            ],
          ),

          widthBox10,
          Container(
            height: 40,
            width: 1.5,
            color: Color(0XFFB6B8D0),
          ),

          widthBox10,

          // Data and percentage
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text:  'Data : ',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF646984),
                    ),
                    CustomText(
                      text:  ' ${data.toStringAsFixed(2)} (${percentage.toStringAsFixed(2)}%)',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF04063E),
                    ),
                  ],
                ),

               heightBox5,
                Row(
                  children: [
                    CustomText(
                      text: 'Cost : ',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF646984),
                    ),
                    CustomText(
                      text: '$cost ৳',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF04063E),
                    ),



                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
