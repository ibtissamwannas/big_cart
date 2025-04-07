import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class CustomBottomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget fieldsWidegt;
  final double height;
  const CustomBottomContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fieldsWidegt,
    this.height = 0.4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.horizontal()),
      decoration: ShapeDecoration(
        color: AppColors.backgroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          Text(
            title,
            style: AppTextStyles.font25Bold.copyWith(letterSpacing: 0.75),
          ),
          verticalSpace(5),
          Text(
            subtitle,
            style: AppTextStyles.font15Medium.copyWith(
              color: AppColors.grey,
              letterSpacing: 0.45,
            ),
          ),
          fieldsWidegt,
        ],
      ),
    );
  }
}
