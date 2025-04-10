import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:big_cart/core/utils/app_padding.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/features/auth/presentation/widgets/otp_count_input.dart';
import 'package:flutter/material.dart';

class VerifyOtpBody extends StatelessWidget {
  const VerifyOtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.horizontal()),
      child: Column(
        children: [
          verticalSpace(50),
          Text(
            'Verify your number',
            style: AppTextStyles.font25Bold.copyWith(letterSpacing: 0.75),
          ),
          verticalSpace(10),
          Text(
            'Please enter the 6-digit code sent to your phone number to verify your identity.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font15Medium.copyWith(
              color: AppColors.grey,
              letterSpacing: 0.45,
            ),
          ),
          verticalSpace(40),
          FittedBox(
            child: OtpCodeInput(
              onCompleted: (code) {
                debugPrint("Entered OTP: $code");
              },
            ),
          ),
          verticalSpace(10),
          CustomElevatedButton(text: 'Next', onPressed: () {}),
          verticalSpace(20),
          Text(
            'Did’nt receive the code ?',
            textAlign: TextAlign.center,
            style: AppTextStyles.font15Regular.copyWith(letterSpacing: 0.45),
          ),
          verticalSpace(2),
          Text(
            'Resend a new code',
            textAlign: TextAlign.center,
            style: AppTextStyles.font15Medium.copyWith(letterSpacing: 0.45),
          ),
        ],
      ),
    );
  }
}
