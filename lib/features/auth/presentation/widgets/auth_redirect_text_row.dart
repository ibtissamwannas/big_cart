import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:big_cart/core/themes/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthRedirectTextRow extends StatelessWidget {
  final String promtText;
  final String actionText;
  final VoidCallback onTap;
  const AuthRedirectTextRow({
    super.key,
    required this.promtText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: promtText,
                    style: AppTextStyles.font15Regular.copyWith(
                      letterSpacing: 0.45,
                      color: AppColors.grey,
                    ),
                  ),
                  TextSpan(
                    text: actionText,
                    style: AppTextStyles.font15Medium.copyWith(
                      letterSpacing: 0.45,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = onTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
