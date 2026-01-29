
import '../UI_Models/page_model.dart';
import '../Resources/app_images.dart';

class AppUiConstants {
  AppUiConstants._();

  static final List<PageUiModel> onboardingPages = [
    PageUiModel(
      title: 'Practice Mindfulness',
      description:
      'Get on the right track towards mindfulness',
      image: AppImages.onboarding1,
      background: AppImages.Ellipse1,
    ),
    PageUiModel(
      title: 'Get started with Yoga',
      description:
      'Easily get started with your yoga journey',
      image: AppImages.onboarding2,
      background: AppImages.Ellipse2,
    ),
    PageUiModel(
      title: 'Unplug your life',
      description:
      'Set up different measures to start with your life',
      image: AppImages.onboarding3,
      background: AppImages.Ellipse3,
    ),
  ];
}
