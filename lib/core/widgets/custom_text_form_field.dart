import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final String prefixIcon;
  final String? suffixIcon;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
    this.onChanged,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      style: AppTextStyles.font15Medium,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.backgroundWhite,
        contentPadding: EdgeInsets.symmetric(vertical: 18.h),
        hintText: hint,
        hintStyle: AppTextStyles.font15Medium.copyWith(color: AppColors.grey),
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 25.w, end: 15.w),
          child: SizedBox(
            width: isPassword ? 16.w : 20.w,
            height: isPassword ? 16.h : 18.h,
            child: SvgPicture.asset(prefixIcon),
          ),
        ),
        suffixIcon:
            isPassword
                ? IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: onToggleVisibility,
                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 20.w),
                    child: Icon(
                      obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_off,
                      color: AppColors.grey,
                    ),
                  ),
                )
                : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
