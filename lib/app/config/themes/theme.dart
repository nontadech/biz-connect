import 'package:flutter/material.dart';

import 'light_color.dart';

class AppTheme {
  const AppTheme();
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: LightColor.background,
      primaryColor: LightColor.background,
      cardTheme: const CardTheme(color: LightColor.background),
      textTheme: const TextTheme(bodyLarge: TextStyle(color: LightColor.black)),
      iconTheme: const IconThemeData(color: LightColor.iconColor),
      dividerColor: LightColor.lightGrey,
      primaryTextTheme:
          const TextTheme(bodyLarge: TextStyle(color: LightColor.titleTextColor)), bottomAppBarTheme: const BottomAppBarTheme(color: LightColor.background));

  static TextStyle titleStyle =
      const TextStyle(color: LightColor.titleTextColor, fontSize: 16);
  static TextStyle subTitleStyle =
      const TextStyle(color: LightColor.subTitleTextColor, fontSize: 12);

  static TextStyle h1Style =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle h2Style = const TextStyle(fontSize: 22);
  static TextStyle h3Style = const TextStyle(fontSize: 20);
  static TextStyle h4Style = const TextStyle(fontSize: 18);
  static TextStyle h5Style = const TextStyle(fontSize: 16);
  static TextStyle h6Style = const TextStyle(fontSize: 14);

  static List<BoxShadow> shadow = <BoxShadow>[
    const BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
  ];

  static EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static EdgeInsets hPadding = const EdgeInsets.symmetric(
    horizontal: 10,
  );

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
class FontSize {
  static double h12 = 16.0;
  static double h11 = 18.0;
  static double h10 = 20.0;
  static double h9 = 22.0;
  static double h8 = 24.0;
  static double h7 = 26.0;
  static double h6 = 28.0;
  static double h5 = 30.0;
  static double h4 = 32.0;
  static double h3 = 34.0;
  static double h2 = 36.0;
  static double h1 = 38.0;
}