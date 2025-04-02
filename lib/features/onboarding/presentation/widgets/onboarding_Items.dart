import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItems extends StatefulWidget {
  const OnboardingItems({super.key});

  @override
  State<OnboardingItems> createState() => _OnboardingItemsState();
}

class _OnboardingItemsState extends State<OnboardingItems> {
  final PageController _pageController = PageController();

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      itemCount: OnboardingEntity.onboardingList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: (index == 0) ? const Color(0xFFC4C4C4) : Colors.white,
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.horizontal(),
                ),
                child: Text(
                  OnboardingEntity.onboardingList[index].description,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.font15Medium.copyWith(
                    color: AppColors.greyColor,
                    letterSpacing: 0.45,
                  ),
                ),
              ),
              Spacer(),
              Row(
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
                            currentIndex == index
                                ? AppColors.primaryDark
                                : AppColors.lightGreyColor,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(20),
              CustomElevatedButton(
                text: 'Get Started',
                onPressed: () {
                  final isLast =
                      currentIndex ==
                      OnboardingEntity.onboardingList.length - 1;

                  if (!isLast) {
                    _pageController.animateToPage(
                      currentIndex + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              verticalSpace(40),
            ],
          ),
        );
      },
    );
  }
}
