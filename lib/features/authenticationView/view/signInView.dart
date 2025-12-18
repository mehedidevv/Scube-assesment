import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scube_accessment/common/commonWidget/customButton.dart';
import 'package:scube_accessment/common/commonWidget/customText.dart';
import 'package:scube_accessment/common/commonWidget/customTextField.dart';
import 'package:scube_accessment/common/components/customSize.dart';
import 'package:scube_accessment/core/utils/appColor.dart';
import 'package:scube_accessment/core/utils/appImages.dart';
import 'package:scube_accessment/features/homeView/view/homeView.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0096FC),
      body: Column(
        children: [
          /// Top  section
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0XFF0096FC)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(AppImages.scubeLogo),
                  ),

                  heightBox14,

                  CustomText(
                    text: 'SCUBE ',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFFFFFFFF),
                  ),

                  CustomText(
                    text: 'Control & Monitoring System ',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFFFFFFF),
                  ),
                ],
              ),
            ),
          ),

          /// Bottom white section
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Login',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF082438),
                      ),
                  
                      heightBox20,
                  
                      CustomTextField(
                        hintText: 'Username',
                        borderColor: Color(0XFFB9C6D6),
                        showObscure: false,
                      ),
                  
                      heightBox14,
                  
                      CustomTextField(
                        hintText: 'Password',
                        borderColor: Color(0XFFB9C6D6),
                        showObscure: true,
                      ),
                  
                      heightBox14,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomText(
                            text: 'Forget password?',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF5E5E5E),
                            underline: true,
                          ),
                        ],
                      ),
                  
                      heightBox20,
                  
                      CustomButtonWidget(
                          btnText: 'Login',
                          btnColor: AppColors.btnColor,
                          onTap: ()=>Get.to(HomeView()),
                          iconWant: false
                      ),
                  
                      heightBox20,
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                  
                          CustomText(
                            text: 'Don’t have any account?',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF5E5E5E),
                          ),
                  
                          widthBox5,
                          CustomText(
                            text: 'Register Now',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0096FC),
                          ),
                        ],
                      )
                  
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
