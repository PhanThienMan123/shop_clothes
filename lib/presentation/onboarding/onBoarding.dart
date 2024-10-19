import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_clothes/Resource/asset_manager.dart';
import 'package:shop_clothes/Resource/colors_manager.dart';
import 'package:shop_clothes/Resource/fonts_manager.dart';
// ignore: unused_import
import 'package:shop_clothes/Resource/routes_manager.dart';
import 'package:shop_clothes/Resource/strings_manager.dart';
import 'package:shop_clothes/presentation/login/Login.dart';
import 'package:shop_clothes/presentation/onboarding/onBoarding_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pageController = PageController();
  final controller = OnboardingItems();
  String buttonText = AppStrings.skip;
  int currentPageIndex = 0;
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              currentPageIndex == 2
                  ? _buttonFinish()
                  : TextButton(
                      onPressed: () => pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                      child: Text(
                        AppStrings.previous,
                        style: TextStyle(
                            fontSize: FontSize.s16,
                            fontWeight: FontWeightManager.semiBold,
                            color: ColorsManager.dark_blue),
                      )),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    activeDotColor: ColorsManager.dark_blue),
                onDotClicked: (index) => pageController.animateToPage(index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn),
              ),
              currentPageIndex == 2
                  ? const SizedBox(
                      width: 10,
                    )
                  : TextButton(
                      onPressed: () => pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                      child: Text(
                        AppStrings.next,
                        style: TextStyle(
                            fontSize: FontSize.s16,
                            fontWeight: FontWeightManager.semiBold,
                            color: ColorsManager.dark_blue),
                      ))
            ],
          ),
        ),
        backgroundColor: ColorsManager.white,
        body: Container(
          child: PageView.builder(
            itemCount: controller.items.length,
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndex = index;
              if (index == 2) {
                _buttonFinish();
              } else if (index == 2) {
                buttonText = AppStrings.previous;
              } else {
                buttonText = AppStrings.skip;
              }
              setState(() {
                isLastPage = controller.items.length - 1 == index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    controller.items[index].image,
                    height: 300,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    controller.items[index].title,
                    style: TextStyle(
                        fontSize: FontSize.s33,
                        fontWeight: FontWeightManager.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      textAlign: TextAlign.center,
                      controller.items[index].subTitle,
                      style: TextStyle(
                          fontSize: FontSize.s16,
                          fontWeight: FontWeightManager.medium,
                          color: ColorsManager.black.withOpacity(0.8)),
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }

  //Button Finish
  Widget _buttonFinish() {
    return ElevatedButton(
        onPressed: () => Get.offAll(_getStarted()),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), backgroundColor: ColorsManager.dark_blue),
        child: Icon(
          Iconsax.arrow_right_3,
          color: ColorsManager.white,
        ));
  }

  //Button Get Started
  Widget _getStarted() {
    return Scaffold(
      bottomSheet: Container(
        width: 250,
        height: 55,
        margin: EdgeInsets.only(bottom: 35),
        child: ElevatedButton(
            onPressed: () {
              Get.offAll(LoginView());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.dark_blue,
            ),
            child: Text(
              "Get Started",
              style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.medium),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            AssetManager.onBoardingLogo4,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              AppStrings.onBoardingTitle4_1,
              style: TextStyle(
                  fontSize: FontSize.s33, fontWeight: FontWeightManager.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              AppStrings.onBoardingTitle4_2,
              style: TextStyle(
                  fontSize: FontSize.s33, fontWeight: FontWeightManager.bold),
            ),
          ),
        ],
      ),
    );
  }
}
// ignore: unused_element

// 

