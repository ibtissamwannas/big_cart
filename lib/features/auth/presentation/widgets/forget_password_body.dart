import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.horizontal()),
      child: Column(
        children: [
          verticalSpace(50),
          Text(
            'Forgot Password',
            style: AppTextStyles.font25Bold.copyWith(letterSpacing: 0.75),
          ),
          verticalSpace(10),
          Text(
            'No worries! Just enter your email and we’ll send you a link to reset your password.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font15Medium.copyWith(
              color: AppColors.grey,
              letterSpacing: 0.45,
            ),
          ),
          verticalSpace(40),
          CustomTextFormField(
            hint: 'Email Address',
            prefixIcon: Assets.imagesEmail,
          ),
          verticalSpace(10),
          CustomElevatedButton(text: 'Send Link', onPressed: () {}),
        ],
      ),
    );
  }
}
