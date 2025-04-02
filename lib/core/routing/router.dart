import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
  ],
);
