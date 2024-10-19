import 'package:flutter/material.dart';
import 'package:shop_clothes/Resource/fonts_manager.dart';
import 'package:shop_clothes/Resource/styles_manager.dart';
import 'package:shop_clothes/Resource/values_manager.dart';
import 'package:shop_clothes/Resource/colors_manager.dart';

ThemeData getApplicationAppTheme() {
  return ThemeData(
    //main color of the app
    primaryColor: ColorsManager.white,
    primaryColorLight: ColorsManager.primaryOpacity70,
    primaryColorDark: ColorsManager.darkPrimary,
    disabledColor: ColorsManager.grey1,
    // ripple color
    splashColor: ColorsManager.primaryOpacity70,
    //will be used incase of disabled button for example
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorsManager.grey),
    // card view theme
    cardTheme: CardTheme(
        color: ColorsManager.white,
        shadowColor: ColorsManager.grey,
        elevation: AppSize.s4),
    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorsManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorsManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: ColorsManager.white, fontSize: FontSize.s16),
    ),
    //Button theme
    buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorsManager.grey1,
        buttonColor: ColorsManager.primary,
        splashColor: ColorsManager.primaryOpacity70),
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: ColorsManager.white),
            backgroundColor: ColorsManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
    //Text theme
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorsManager.darkGrey, fontSize: FontSize.s16), //headline1
        titleMedium: getMediumStyle(
            color: ColorsManager.lightGrey, fontSize: FontSize.s14), //subtitle1
        titleSmall: getMediumStyle(
            color: ColorsManager.primary, fontSize: FontSize.s14),
        bodySmall: getRegularStyle(color: ColorsManager.grey1), //caption
        bodyLarge: getRegularStyle(color: ColorsManager.grey)), //bodyText 1
    //input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),

      //hint style
      hintStyle: getRegularStyle(color: ColorsManager.grey1),

      //lable Style
      labelStyle: getMediumStyle(color: ColorsManager.darkGrey),

      //error style
      errorStyle: getRegularStyle(color: ColorsManager.error),

      //enabled border
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      //focus Border
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.dark_blue, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      //error border
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

      //focus error border
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
