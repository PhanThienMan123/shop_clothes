import 'package:flutter/material.dart';
import 'package:shop_clothes/Resource/strings_manager.dart';
import 'package:shop_clothes/presentation/forgetPassword/ForgetPassword.dart';
import 'package:shop_clothes/presentation/login/login.dart';
import 'package:shop_clothes/presentation/main/main_view.dart';
import 'package:shop_clothes/presentation/onBoarding/onBoarding.dart';
import 'package:shop_clothes/presentation/register/Register.dart';
import 'package:shop_clothes/presentation/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "forgetPassword";
  static const String mainRoute = "/main";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routSettings) {
    switch (routSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => OnBoardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => RegisterView(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => ForgetPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => MainView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
