import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_clothes/Resource/routes_manager.dart';
import 'package:shop_clothes/Resource/themes_manager.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp._internal(); //private named constructor
  int appState = 0;
  static final MyApp instance =
      MyApp._internal(); //single instance -- singleton

  factory MyApp() => instance; //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationAppTheme(),
    );
  }
}
