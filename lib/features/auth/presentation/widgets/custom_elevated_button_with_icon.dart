import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButtonWithIcon extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? textColor;
  final bool isGradient;

  const CustomElevatedButtonWithIcon({
    super.key,
    required this.imagePath,
    required this.text,
    this.textColor,
    this.isGradient = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      isGradient: isGradient,
      rowWidget: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: SvgPicture.asset(imagePath),
            ),
          ),
          Center(
            child: Text(
              text,
              style: AppTextStyles.font15Bold.copyWith(color: textColor),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
