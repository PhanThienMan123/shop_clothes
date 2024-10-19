import 'package:shop_clothes/Resource/asset_manager.dart';
import 'package:shop_clothes/Resource/strings_manager.dart';
import 'package:shop_clothes/presentation/onboarding/onBoarding_info.dart';

class OnboardingItems {
  List<OnboardingInfo> items = [
    OnboardingInfo(
        title: AppStrings.onBoardingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
        image: AssetManager.onBoardingLogo1),
    OnboardingInfo(
        title: AppStrings.onBoardingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
        image: AssetManager.onBoardingLogo2),
    OnboardingInfo(
        title: AppStrings.onBoardingTitle3,
        subTitle: AppStrings.onBoardingSubTitle3,
        image: AssetManager.onBoardingLogo3)
  ];
}
