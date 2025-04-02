import 'package:big_cart/core/utils/app_images.dart';

class OnboardingEntity {
  final String title;
  final String description;
  final String image;

  const OnboardingEntity({
    required this.title,
    required this.description,
    required this.image,
  });

  static const List<OnboardingEntity> onboardingList = [
    OnboardingEntity(
      title: 'Welcome to',
      description:
          'Discover an all-in-one shopping experience tailored just for you.',
      image: Assets.imagesOnboarding1,
    ),
    OnboardingEntity(
      title: 'Buy Quality Dairy Products',
      description:
          'Shop fresh, high-quality dairy essentials from trusted local sources.',
      image: Assets.imagesOnboarding2,
    ),
    OnboardingEntity(
      title: 'Buy Premium Quality Fruits',
      description:
          'Enjoy handpicked premium fruits delivered with care and freshness guaranteed.',
      image: Assets.imagesOnboarding3,
    ),
    OnboardingEntity(
      title: 'Get Discounts On All Products',
      description:
          'Unlock amazing deals and exclusive offers every time you shop with us.',
      image: Assets.imagesOnboarding4,
    ),
  ];
}
