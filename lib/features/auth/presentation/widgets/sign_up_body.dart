import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/core/widgets/custom_elevated_button.dart';
import 'package:big_cart/core/widgets/custom_text_form_field.dart';
import 'package:big_cart/features/auth/presentation/widgets/auth_redirect_text_row.dart';
import 'package:big_cart/features/auth/presentation/widgets/background_text_image.dart';
import 'package:big_cart/features/auth/presentation/widgets/custom_bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          const BackgroundTextAndImage(
            imagePath: Assets.imagesSingupBg1,
            withArrowIcon: true,
          ),
          Positioned(
            bottom: 0,
            child: CustomBottomContainer(
              height: 0.54,
              title: 'Create an account',
              subtitle: 'Quickly create an account',
              fieldsWidegt: Column(
                children: [
                  verticalSpace(20),
                  CustomTextFormField(
                    hint: 'Email Address',
                    prefixIcon: Assets.imagesEmail,
                  ),
                  verticalSpace(5),
                  CustomTextFormField(
                    hint: 'Phone',
                    prefixIcon: Assets.imagesTelephone,
                  ),
                  verticalSpace(5),
                  CustomTextFormField(
                    hint: 'Password',
                    prefixIcon: Assets.imagesLock,
                    isPassword: true,
                    suffixIcon: Assets.imagesPassword,
                  ),

                  verticalSpace(20),
                  CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: () => context.push(Routes.verifyotp),
                  ),
                  verticalSpace(20),
                  AuthRedirectTextRow(
                    promtText: 'Already have an account ? ',
                    actionText: 'Login',
                    onTap: () {
                      context.push(Routes.login);
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
