import 'package:flutter/material.dart';

import '../../../../common/commonWidget/customText.dart';

class CustomRowWidget extends StatelessWidget {

  final String data;
  final String value;
  const CustomRowWidget({
    super.key, required this.data, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        CustomText(
          text: '$data : ',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0XFF646984),
        ),

        CustomText(
          text: ' $value',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0XFF04063E),
        ),


      ],
    );
  }
}