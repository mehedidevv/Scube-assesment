import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scube_accessment/common/commonWidget/customAppbar.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import 'package:scube_accessment/core/utils/appImages.dart';
import 'package:scube_accessment/features/homeView/view/noDataView.dart';
import 'package:scube_accessment/features/homeView/widget/customCircularProgressBar.dart';

import '../controller/summeryTabController.dart';
import '../widget/instrumentComponentWidget.dart';
import '../widget/loadWidget.dart';
import '../widget/segmantedTapBar.dart';
import '../widget/sourceWidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> instrumentList = [
      {'image': AppImages.analysis, 'title': 'Analysis Pro'},
      {'image': AppImages.dGenarator, 'title': 'G. Generator'},
      {'image': AppImages.plant, 'title': 'Plant Summery'},
      {'image': AppImages.gas, 'title': 'Natural Gas'},
      {'image': AppImages.dGenarator, 'title': 'D. Generator'},
      {'image': AppImages.water, 'title': 'Water Process'},
    ];

    final SummaryTabController controller = Get.put(SummaryTabController());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'SCM',
        fontSize: 16,
        suffixIconAsset: AppImages.notification,
      ),
      body: Container(
        color: const Color(0XFFD9E4F1),
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Upper container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFB6B8D0),
                  ),
                ),
                child: Column(
                  children: [
                    SummaryTabBar(),
                    heightBox14,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                      child: Column(
                        children: [
                          CustomText(
                            text: 'Electricity',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF979797),
                          ),
                          const Divider(thickness: 2),
                          heightBox14,
                          CustomCircularProgress(
                            outerColor: const Color(0XFF398FC9),
                            title: 'Total Power',
                            subtitle: '5.53 kw',
                            size: 120,
                            innerColor: Colors.transparent,
                          ),
                          heightBox20,

                          /// Toggle Buttons and Source/Load Widgets
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                /// Toggle Buttons
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFE5E9F1),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Row(
                                    children: [
                                      /// Source Button
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: controller.selectSource,
                                          child: Obx(
                                                () => Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: controller.isSourceSelected.value
                                                    ? const Color(0xFF0096FC)
                                                    : Colors.transparent,
                                                borderRadius: BorderRadius.circular(20.r),
                                              ),
                                              alignment: Alignment.center,
                                              child: CustomText(
                                                text: 'Source',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                color: controller.isSourceSelected.value
                                                    ? Colors.white
                                                    : const Color(0XFF646984),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// Load Button
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: controller.selectLoad,
                                          child: Obx(
                                                () => Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: !controller.isSourceSelected.value
                                                    ? const Color(0XFF0096FC)
                                                    : Colors.transparent,
                                                borderRadius: BorderRadius.circular(20.r),
                                              ),
                                              alignment: Alignment.center,
                                              child: CustomText(
                                                text: 'Load',
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: !controller.isSourceSelected.value
                                                    ? Colors.white
                                                    : const Color(0XFF6B7280),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const Divider(thickness: 2),
                                heightBox14,

                                /// Display corresponding widget
                                Obx(
                                      () => controller.isSourceSelected.value
                                      ? SourceWidget() // Make sure SourceWidget is shrink-wrapped
                                      : LoadWidget(),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              /// Grid
              GridView.builder(
                itemCount: instrumentList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 3.2,
                ),
                itemBuilder: (context, index) {
                  final item = instrumentList[index];
                  return InstrumentComponentWidget(
                    imagePath: item['image']!,
                    title: item['title']!,
                    onTap: ()=>Get.to(NoDataView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
