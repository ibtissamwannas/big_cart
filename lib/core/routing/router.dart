import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/core/utils/shared_pref_helper.dart';
import 'package:big_cart/core/utils/shared_pref_keys.dart';
import 'package:big_cart/features/auth/presentation/pages/welcome.dart';
import 'package:big_cart/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',
  redirect: (context, state) async {
    final isFinishOnbarding = await SharedPrefHelper.getBool(
      SharedPrefKeys.finishOnbarding,
    );
    if (isFinishOnbarding) {
      return Routes.welcome;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: Routes.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
  ],
);
