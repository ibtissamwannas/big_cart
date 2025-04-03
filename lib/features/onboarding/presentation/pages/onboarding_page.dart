import 'package:big_cart/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:big_cart/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(body: OnboardingBody()),
    );
  }
}
