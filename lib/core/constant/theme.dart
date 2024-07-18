import 'package:bookanyvan_driver/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  get light => ThemeData.light().copyWith(
      primaryColor: AppColor.primaryColorlight,
      colorScheme: ColorScheme(
        background: AppColor.backgroundLight,
        onBackground: AppColor.backgroundLight,
        brightness: Brightness.light,
        primary: AppColor.primaryColorlight,
        onPrimary: AppColor.primaryColorlight,
        secondary: AppColor.secondaryColorlight,
        onSecondary: AppColor.secondaryColorlight,
        error: AppColor.secondaryColorlight,
        onError: AppColor.secondaryColorlight,
        surface: AppColor.secondaryColorlight,
        onSurface: AppColor.secondaryColorlight,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryColorlight,
      ),
      scaffoldBackgroundColor: AppColor.backgroundScaffoldLight,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColor.textColorLight,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyMedium: const TextStyle(color: Colors.black, fontSize: 16),
        displayLarge: TextStyle(
            color: AppColor.textColorLight,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        displayMedium: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColor.primaryColorlight,
          actionTextColor: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColor.primaryColorlight,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColorlight)),
      listTileTheme: ListTileThemeData(
        tileColor: AppColor.primaryColorlight,
        textColor: AppColor.backgroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(AppColor.secondaryColorlight),
          trackColor: MaterialStateProperty.all(AppColor.backgroundLight)),
      brightness: Brightness.light);

  get dark => ThemeData.dark().copyWith(
      primaryColor: AppColor.primaryColordark,
      colorScheme: ColorScheme(
        background: AppColor.backgroundDark,
        onBackground: AppColor.backgroundDark,
        brightness: Brightness.dark,
        primary: AppColor.primaryColordark,
        onPrimary: AppColor.primaryColordark,
        secondary: AppColor.secondaryColordark,
        onSecondary: AppColor.secondaryColordark,
        error: AppColor.secondaryColordark,
        onError: AppColor.secondaryColordark,
        surface: AppColor.secondaryColordark,
        onSurface: AppColor.secondaryColordark,
      ),
      scaffoldBackgroundColor: AppColor.backgroundScaffoldDark,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: AppColor.textColorDark,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyMedium: const TextStyle(color: Colors.white, fontSize: 16),
        displayLarge: TextStyle(
            color: AppColor.textColorDark,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        displayMedium: const TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColor.primaryColordark,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          actionsIconTheme: const IconThemeData(color: Colors.black)),
      snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColor.primaryColordark,
          actionTextColor: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColordark)),
      brightness: Brightness.dark,
      listTileTheme: ListTileThemeData(
        tileColor: AppColor.primaryColordark,
        textColor: AppColor.backgroundDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(AppColor.secondaryColordark),
          trackColor: MaterialStateProperty.all(AppColor.backgroundDark)));
}
