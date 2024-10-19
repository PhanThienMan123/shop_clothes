import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_clothes/Resource/asset_manager.dart';
import 'package:shop_clothes/Resource/colors_manager.dart';
import 'package:shop_clothes/Resource/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  // ignore: unused_element
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
    ;
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.white,
        body: Center(
          child: Container(
            child: Image.asset(
              AssetManager.splashLogo,
              width: 500,
            ),
          ),
        ));
  }
}
