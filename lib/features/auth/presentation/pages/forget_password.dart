import 'package:big_cart/core/widgets/cutsom_app_bar.dart';
import 'package:big_cart/features/auth/presentation/widgets/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Password Recovery'),
      body: ForgetPasswordBody(),
    );
  }
}
