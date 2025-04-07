import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Widget? rowWidget;
  final bool isGradient;

  const CustomElevatedButton({
    super.key,
    this.text,
    required this.onPressed,
    this.rowWidget,
    this.isGradient = true,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: isGradient ? AppColors.primary : Colors.transparent,
      borderRadius: BorderRadius.circular(6.r),
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            color: isGradient ? null : Colors.white,
            gradient:
                isGradient
                    ? LinearGradient(
                      colors: [AppColors.primary, AppColors.primaryDark],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                    : null,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(minHeight: 50.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                rowWidget ??
                Text(
                  text!,
                  style: AppTextStyles.font15Bold.copyWith(
                    color: isGradient ? Colors.white : AppColors.textPrimary,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
