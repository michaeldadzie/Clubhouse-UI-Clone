import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Constants {
  static String appName = "SykaBank";

  static Color lightPrimary = Colors.white;
  static Color primaryWhite = Color.fromRGBO(247, 247, 247, 1);
  static Color primaryDark = Colors.black;
  static Color secondaryDark = Colors.grey[900];
  static Color secondaryDark500 = Colors.grey[500];
  static Color primaryPurple = Colors.deepPurple;
  static Color secondaryPurple = Colors.deepPurple[50];
  static Color primaryGrey = Colors.grey[200];
  static Color primaryGrey100 = Colors.grey[100];

  static Color designPrimary1 = Colors.purple[50];
  static Color designPrimary2 = Colors.pink[50];
  static Color designPrimary3 = Colors.yellow[50];
  static Color designPrimary4 = Colors.red[50];

  static Color designSecondary1 = Colors.purple[500].withOpacity(0.3);
  static Color designSecondary2 = Colors.pink[500].withOpacity(0.3);
  static Color designSecondary3 = Colors.yellow[500].withOpacity(0.3);
  static Color designSecondary4 = Colors.red[500].withOpacity(0.3);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightPrimary,
    primaryColor: lightPrimary,
    accentColor: lightPrimary,
    focusColor: primaryDark,
    hintColor: lightPrimary,
    hoverColor: primaryGrey,
    dividerColor: secondaryPurple,
    splashColor: primaryDark,
    cardColor: primaryGrey100,
    errorColor: designPrimary1,
    canvasColor: designPrimary2,
    cursorColor: designPrimary3,
    indicatorColor: designPrimary4,
    scaffoldBackgroundColor: primaryWhite,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: primaryDark,
    primaryColor: primaryDark,
    accentColor: primaryDark,
    focusColor: lightPrimary,
    hintColor: secondaryDark,
    hoverColor: primaryPurple,
    dividerColor: secondaryDark,
    splashColor: primaryPurple,
    cardColor: secondaryDark,
    errorColor: designSecondary1,
    canvasColor: designSecondary2,
    cursorColor: designSecondary3,
    indicatorColor: designSecondary4,
    scaffoldBackgroundColor: primaryDark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
  );
}
