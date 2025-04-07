import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:flutter/material.dart';

class AuthForgetPasswordRow extends StatelessWidget {
  final bool rememberMe;
  final ValueChanged<bool?> onRememberChanged;
  final VoidCallback onForgotPasswordTap;

  const AuthForgetPasswordRow({
    super.key,
    required this.rememberMe,
    required this.onRememberChanged,
    required this.onForgotPasswordTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.7,
          child: Switch(
            padding: EdgeInsets.all(0),
            value: rememberMe,
            onChanged: onRememberChanged,
            activeColor: AppColors.primaryDark,
            inactiveThumbColor: AppColors.grey,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            inactiveTrackColor: AppColors.backgroundLight,
          ),
        ),
        Text(
          'Remember me',
          style: AppTextStyles.font15Medium.copyWith(color: AppColors.grey),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onForgotPasswordTap,
          child: Text(
            'Forgot password',
            style: AppTextStyles.font15Medium.copyWith(
              color: AppColors.lightBlue,
            ),
          ),
        ),
      ],
    );
  }
}
