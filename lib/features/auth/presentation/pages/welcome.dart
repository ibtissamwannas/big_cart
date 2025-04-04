import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesWelcome),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 60.h),
                  child: Text(
                    'Welcome',
                    style: AppTextStyles.font18Medium.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: AppColors.backgroundLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.horizontal(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(20),
                      Text(
                        'Welcome',
                        style: AppTextStyles.font25Bold.copyWith(
                          letterSpacing: 0.75,
                        ),
                      ),
                      verticalSpace(5),
                      Text(
                        'Discover a smarter way to shop for groceries — fast, fresh, and delivered.',
                        style: AppTextStyles.font15Medium.copyWith(
                          color: AppColors.greyColor,
                          letterSpacing: 0.45,
                        ),
                      ),
                      verticalSpace(20),
                      CustomElevatedButton(
                        isGradient: false,
                        rowWidget: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                  start: 10.w,
                                ),
                                child: SvgPicture.asset(
                                  Assets.imagesGoogleIcon,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Continue with Google',
                                style: AppTextStyles.font15Bold.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(10),
                      CustomElevatedButton(
                        rowWidget: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                  start: 10.w,
                                ),
                                child: SvgPicture.asset(
                                  Assets.imagesProfileIcon,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Create an account',
                                style: AppTextStyles.font15Bold.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Already have an account ? ',
                                      style: TextStyle(
                                        color: const Color(0xFF868889),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.45,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Login',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.45,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
