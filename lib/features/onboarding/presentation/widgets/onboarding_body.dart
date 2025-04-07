import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:big_cart/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:big_cart/features/onboarding/presentation/widgets/description_text.dart';
import 'package:big_cart/features/onboarding/presentation/widgets/onboarding_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isLast = context.watch<OnboardingCubit>().isLastPage;
    return PageView.builder(
      controller: context.read<OnboardingCubit>().pageController,
      onPageChanged: context.read<OnboardingCubit>().changePage,
      itemCount: OnboardingEntity.onboardingList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: (index == 0) ? AppColors.shadow : Colors.white,
            boxShadow:
                (index == 0)
                    ? [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ]
                    : [],
            image: DecorationImage(
              image: AssetImage(OnboardingEntity.onboardingList[index].image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(100),
              Text(
                OnboardingEntity.onboardingList[index].title,
                textAlign: TextAlign.center,
                style: AppTextStyles.font30Bold,
              ),
              if (index == 0)
                Image.asset(Assets.imagesBigcart, width: 140.w, height: 50.h),
              verticalSpace(10),
              DescriptionText(index: index),
              Spacer(),
              OnboardingDots(),
              verticalSpace(20),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.horizontal(),
                ),
                child: CustomElevatedButton(
                  text: isLast ? 'Get Started' : 'Continue',
                  onPressed:
                      isLast
                          ? () {
                            context.go(Routes.welcome);
                            context.read<OnboardingCubit>().saveOnboarding();
                          }
                          : context.read<OnboardingCubit>().nextPage,
                ),
              ),
              verticalSpace(40),
            ],
          ),
        );
      },
    );
  }
}
