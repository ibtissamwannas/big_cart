import 'package:big_cart/core/routing/routes.dart';
import 'package:big_cart/features/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => const Onboarding(),
    ),
  ],
);
