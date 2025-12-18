import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DateController extends GetxController {
  RxString fromDate = ''.obs;
  RxString toDate = ''.obs;

  Future<void> pickDate(BuildContext context, bool isFromDate) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      final formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2,'0')}-${pickedDate.day.toString().padLeft(2,'0')}";
      if (isFromDate) {
        fromDate.value = formattedDate;
      } else {
        toDate.value = formattedDate;
      }
    }
  }
}
