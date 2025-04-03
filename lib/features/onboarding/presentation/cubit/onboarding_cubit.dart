import 'package:big_cart/core/utils/shared_pref_helper.dart';
import 'package:big_cart/core/utils/shared_pref_keys.dart';
import 'package:big_cart/features/onboarding/domain/entities/onboarding_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  final PageController pageController = PageController();

  void changePage(int index) => emit(index);

  bool get isLastPage => state == OnboardingEntity.onboardingList.length - 1;

  void nextPage() {
    if (!isLastPage) {
      pageController.animateToPage(
        state + 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void saveOnboarding() {
    SharedPrefHelper.setData(SharedPrefKeys.finishOnbarding, true);
  }
}
