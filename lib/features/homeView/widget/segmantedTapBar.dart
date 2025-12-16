import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/summeryTabController.dart';

class SummaryTabBar extends StatelessWidget {
  SummaryTabBar({super.key});

  final SummaryTabController controller =
  Get.put(SummaryTabController());

  final List<String> tabs = ['Summery', 'SLD', 'Data'];

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
        child: Column(
          children: [
            Row(
              children: List.generate(tabs.length, (index) {
                final isSelected = controller.selectedIndex.value == index;

                return Expanded(
                  child: GestureDetector(
                    onTap: () => controller.changeTab(index),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(0xFF0096FC)
                            : Colors.transparent,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: isSelected
                              ? Colors.white
                              : const Color(0XFF6B7280),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
           Container(
             height: 1,
             decoration: BoxDecoration(
               color: Color(0XFFB6B8D0)
             ),
           )
          ],
        ),
      ),
    );
  }
}
