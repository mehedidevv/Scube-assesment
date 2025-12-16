import 'package:flutter/material.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import 'package:scube_accessment/features/homeView/widget/singleSourceWidget.dart';
import '../../../core/utils/appImages.dart';

class LoadWidget extends StatelessWidget {
  LoadWidget({super.key});

  // List of source data
  final List<Map<String, dynamic>> sourceList = [
    {
      "imagePath": AppImages.solar,
      "indicatorColor": Color(0XFF78C6FF),
      "title": "Data View",
      "statusText": "(Active)",
      "statusColor": Color(0XFF0096FC),
      "subtitle1": "Data 1",
      "subtitleValue1": "55505.63",
      "subtitle2": "Data 2",
      "subtitleValue2": "58805.63",
    },
    {
      "imagePath": AppImages.dataTypeTwo,
      "indicatorColor": Color(0XFFFB902E),
      "title": "Data Type 2",
      "statusText": "(Active)",
      "statusColor": Color(0XFF0096FC),
      "subtitle1": "Data 1",
      "subtitleValue1": "55505.63",
      "subtitle2": "Data 2",
      "subtitleValue2": "58805.63",
    },
    {
      "imagePath": AppImages.power,
      "indicatorColor": Color(0XFF78C6FF),
      "title": "Data Type 3",
      "statusText": "(Inactive)",
      "statusColor": Color(0XFFDF2222),
      "subtitle1": "Data 1",
      "subtitleValue1": "55505.63",
      "subtitle2": "Data 2",
      "subtitleValue2": "58805.63",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true, // Take only needed space
      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
      padding: const EdgeInsets.only(bottom: 10),
      itemCount: sourceList.length,
      separatorBuilder: (_, __) => heightBox14,
      itemBuilder: (context, index) {
        final source = sourceList[index];
        return SingleSourceWidget(
          imagePath: source['imagePath'],
          indicatorColor: source['indicatorColor'],
          title: source['title'],
          statusText: source['statusText'],
          statusColor: source['statusColor'],
          subtitle1: source['subtitle1'],
          subtitleValue1: source['subtitleValue1'],
          subtitle2: source['subtitle2'],
          subtitleValue2: source['subtitleValue2'],
        );
      },
    );
  }
}
