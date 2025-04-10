import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/utils/shared_pref_helper.dart';
import 'package:big_cart/core/utils/shared_pref_keys.dart';
import 'package:big_cart/features/auth/presentation/pages/forget_password.dart';
import 'package:big_cart/features/auth/presentation/pages/login.dart';
import 'package:big_cart/features/auth/presentation/pages/sign_up.dart';
import 'package:big_cart/features/auth/presentation/pages/verify_otp.dart';
import 'package:big_cart/features/auth/presentation/pages/welcome.dart';
import 'package:big_cart/features/onboarding/presentation/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',
  redirect: (context, state) async {
    final isFinishOnbarding = await SharedPrefHelper.getBool(
      SharedPrefKeys.finishOnbarding,
    );
    final goingToOnboarding = state.fullPath == Routes.onboarding;

    if (isFinishOnbarding && goingToOnboarding) {
      return Routes.welcome;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(path: Routes.welcome, builder: (context, state) => const Welcome()),
    GoRoute(path: Routes.login, builder: (context, state) => const Login()),
    GoRoute(path: Routes.signup, builder: (context, state) => const SignUp()),
    GoRoute(
      path: Routes.forgetpassword,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: Routes.verifyotp,
      builder: (context, state) => const VerifyOTP(),
    ),
  ],
);
