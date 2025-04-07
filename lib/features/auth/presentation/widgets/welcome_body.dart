import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/utils/app_images.dart';
import 'package:big_cart/core/utils/spacing.dart';
import 'package:big_cart/features/auth/presentation/widgets/auth_redirect_text_row.dart';
import 'package:big_cart/features/auth/presentation/widgets/background_text_image.dart';
import 'package:big_cart/features/auth/presentation/widgets/custom_bottom_container.dart';
import 'package:big_cart/features/auth/presentation/widgets/custom_elevated_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          const BackgroundTextAndImage(),
          Positioned(
            bottom: 0,
            child: CustomBottomContainer(
              title: 'Welcome',
              subtitle:
                  'Discover a smarter way to shop for groceries — fast, fresh, and delivered.',
              fieldsWidegt: Column(
                children: [
                  verticalSpace(20),
                  CustomElevatedButtonWithIcon(
                    imagePath: Assets.imagesGoogleIcon,
                    text: 'Continue with Google',
                    textColor: Colors.black,
                    isGradient: false,
                  ),
                  verticalSpace(10),
                  CustomElevatedButtonWithIcon(
                    imagePath: Assets.imagesProfileIcon,
                    text: 'Create an account',
                    textColor: Colors.white,
                  ),
                  verticalSpace(20),
                  AuthRedirectTextRow(
                    promtText: 'Already have an account ? ',
                    actionText: 'Login',
                    onTap: () {
                      context.push(Routes.login);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
