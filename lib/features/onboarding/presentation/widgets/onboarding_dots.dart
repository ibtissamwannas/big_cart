import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:big_cart/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, int>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            OnboardingEntity.onboardingList.length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.5.w),
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color:
                      state == index
                          ? AppColors.primaryDark
                          : AppColors.lightGreyColor,
                  shape: OvalBorder(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
