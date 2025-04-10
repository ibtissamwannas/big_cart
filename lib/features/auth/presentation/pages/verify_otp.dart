import 'package:big_cart/core/widgets/cutsom_app_bar.dart';
import 'package:big_cart/features/auth/presentation/widgets/verify_otp_body.dart';
import 'package:flutter/material.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Verify Number'),
      body: VerifyOtpBody(),
    );
  }
}
