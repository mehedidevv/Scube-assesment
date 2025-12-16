import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? fontSize;
  final VoidCallback? onTap;
  final bool centerTitle;
  final Color? backgroundColor;
  final bool forceMaterialTransparency;
  final bool? automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  // 🔥 New suffix icon stuff
  final String? suffixIconAsset;
  final double? suffixIconSize;
  final VoidCallback? suffixOnTap;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.fontSize,
    this.centerTitle = true,
    this.backgroundColor = Colors.transparent,
    this.forceMaterialTransparency = true,
    this.actions,
    this.leading,
    this.automaticallyImplyLeading,
    this.onTap,

    // 🔥 New params
    this.suffixIconAsset,
    this.suffixIconSize,
    this.suffixOnTap,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: forceMaterialTransparency,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: backgroundColor,
      elevation: forceMaterialTransparency ? 0 : null,
      centerTitle: centerTitle,

      title: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: fontSize ?? 16.h,
          fontWeight: FontWeight.w500,
        ),
      ),

      leading: leading ??
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: GestureDetector(
              onTap: onTap ??
                      () {
                    if (Get.isSnackbarOpen) Get.closeCurrentSnackbar();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      if (kDebugMode) {
                        print("No routes to pop");
                      }
                    }
                  },
              child: Container(
                height: 28.h,
                width: 28.w,
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: const Color(0XFF232323),
                  size: 20.h,
                ),
              ),
            ),
          ),

      actions: [
        if (suffixIconAsset != null)
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: GestureDetector(
              onTap: suffixOnTap,
              child: Image.asset(
                suffixIconAsset!,
                height: suffixIconSize ?? 20.h,
                width: suffixIconSize ?? 20.w,
                fit: BoxFit.contain,
              ),
            ),
          ),

        // keep existing actions if provided
        ...?actions,
      ],
    );
  }
}
