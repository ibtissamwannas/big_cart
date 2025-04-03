import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final int index;
  const DescriptionText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.horizontal()),
      child: Text(
        OnboardingEntity.onboardingList[index].description,
        textAlign: TextAlign.center,
        style: AppTextStyles.font15Medium.copyWith(
          color: AppColors.greyColor,
          letterSpacing: 0.45,
        ),
      ),
    );
  }
}
