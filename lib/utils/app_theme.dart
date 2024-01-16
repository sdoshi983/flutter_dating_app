import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  // colors
  static const Color primary = Color(0xFFFF2F53);
  static const Color secondary = Colors.white;

  // black shades
  static const Color black = Colors.black;

  // grey shades
  static const Color grey = Colors.grey;

  // blue shades
  static const Color davysGrey = Color(0xFF5C4C5A);

  // theme data
  static ThemeData getAppThemeData() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: secondary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primary,
          secondary: secondary,
        ),
        fontFamily: 'Avenir',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 42,
            letterSpacing: -1.5,
            fontWeight: FontWeight.w600,
            color: black,
          ),
          displayMedium: TextStyle(
            fontSize: 40,
            letterSpacing: -2,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          displaySmall: TextStyle(
            fontSize: 32,
            letterSpacing: -2,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          headlineSmall: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
            color: black,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w400,
            color: black,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w600,
            color: black,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          bodySmall: TextStyle(
            fontSize: 18,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w300,
            color: black,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w500,
            color: black,
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w400,
            color: black,
          ),
          labelMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            color: black,
          ),
          labelSmall: TextStyle(
            fontSize: 10,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w400,
            color: black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54),
            ),
            minimumSize: const Size(double.infinity, 0),
            disabledBackgroundColor: primary.withOpacity(0.3),
            disabledForegroundColor: secondary,
            textStyle: const TextStyle(
              fontFamily: 'Avenir',
              fontSize: 18,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w500,
              color: secondary,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            elevation: 0,
            side: const BorderSide(color: primary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54),
            ),
            minimumSize: const Size(double.infinity, 0),
            disabledBackgroundColor: primary.withOpacity(0.3),
            disabledForegroundColor: secondary,
            textStyle: const TextStyle(
              fontFamily: 'Avenir',
              fontSize: 18,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w500,
              color: secondary,
            ),
          ),
        ),
      );
}
