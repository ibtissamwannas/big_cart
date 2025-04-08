import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/core/widgets/custom_text_form_field.dart';
import 'package:big_cart/features/auth/presentation/widgets/auth_forget_password_row.dart';
import 'package:big_cart/features/auth/presentation/widgets/auth_redirect_text_row.dart';
import 'package:big_cart/features/auth/presentation/widgets/background_text_image.dart';
import 'package:big_cart/features/auth/presentation/widgets/custom_bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          const BackgroundTextAndImage(
            imagePath: Assets.imagesLoginBg,
            withArrowIcon: true,
          ),
          Positioned(
            bottom: 0,
            child: CustomBottomContainer(
              height: 0.52,
              title: 'Welcome back !',
              subtitle: 'Sign in to your account',
              fieldsWidegt: Column(
                children: [
                  verticalSpace(20),
                  CustomTextFormField(
                    hint: 'Email Address',
                    prefixIcon: Assets.imagesEmail,
                  ),
                  verticalSpace(5),
                  CustomTextFormField(
                    hint: 'Password',
                    prefixIcon: Assets.imagesLock,
                    isPassword: true,
                    suffixIcon: Assets.imagesPassword,
                  ),
                  verticalSpace(15),
                  AuthForgetPasswordRow(
                    rememberMe: false,
                    onRememberChanged: (bool? value) {},
                    onForgotPasswordTap: () {},
                  ),
                  verticalSpace(10),
                  CustomElevatedButton(text: 'Login', onPressed: () {}),
                  verticalSpace(20),
                  AuthRedirectTextRow(
                    promtText: 'Don’t have an account ? ',
                    actionText: 'Sign up',
                    onTap: () {
                      context.push(Routes.signup);
                    },
                  ),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
