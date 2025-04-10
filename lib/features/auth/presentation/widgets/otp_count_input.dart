import 'package:big_cart/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpCodeInput extends StatelessWidget {
  final void Function(String) onCompleted;

  const OtpCodeInput({super.key, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      borderColor: Colors.transparent,
      borderWidth: 0,
      fillColor: Colors.white,
      filled: true,
      fieldHeight: 66,
      fieldWidth: 55,
      focusedBorderColor: AppColors.primaryDark,
      cursorColor: AppColors.primaryDark,
      borderRadius: BorderRadius.circular(10),
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: onCompleted,
    );
  }
}
