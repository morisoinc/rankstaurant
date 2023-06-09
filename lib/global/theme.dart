import 'package:flutter/material.dart';

import 'colors.dart';

enum Theme {
  lightBlue,
  lightGreen,
  lightBrown,
}

ThemeData buildTheme({Theme? theme}) {
  final ThemeData base = ThemeData.light().copyWith(
    splashColor: Colors.transparent,
    errorColor: kRed,
  );

  switch (theme) {
    case Theme.lightGreen:
      return _buildColorDependentThemeData(
        theme: base,
        primary: kGreen,
        lightest: kLightestGreen,
        lighter: kLighterGreen,
        light: kLightGreen,
        darker: kDarkerGreen,
        darkest: kMostDarkestGreen,
      );
    case Theme.lightBlue:
      return _buildColorDependentThemeData(
        theme: base,
        primary: kBlue,
        lightest: kLightestBlue,
        lighter: kLighterBlue,
        light: kLightBlue,
        darker: kDarkerBlue,
        darkest: kMostDarkestBlue,
      );
    default:
      return _buildColorDependentThemeData(
        theme: base,
        primary: kBrown,
        lightest: kLightestBrown,
        lighter: kLighterBrown,
        light: kLightBrown,
        darker: kDarkerBrown,
        darkest: kMostDarkestBrown,
      );
  }
}

ThemeData _buildColorDependentThemeData({
  required ThemeData theme,
  required Color primary,
  required Color lightest,
  required Color lighter,
  required Color light,
  required Color darker,
  required Color darkest,
}) {
  return theme.copyWith(
      accentColor: primary,
      primaryColor: lighter,
      buttonTheme: ButtonThemeData(splashColor: darker),
      cardTheme: CardTheme(
        color: lightest,
        shadowColor: kCardShadow,
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: darker),
        ),
      ),
      unselectedWidgetColor: light,
      toggleableActiveColor: primary,
      iconTheme: IconThemeData(
        color: darkest,
        size: 12,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          elevation: 10,
          shape: const RoundedRectangleBorder(),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: primary,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
        backgroundColor: primary,
        splashColor: darker,
        focusColor: darker,
      ),
      textTheme: _buildTextTheme(
        base: theme.textTheme,
        textColor: darkest,
      ),
      primaryTextTheme: _buildTextTheme(
        base: theme.primaryTextTheme,
        textColor: darkest,
      ),
      accentTextTheme: _buildTextTheme(
        base: theme.accentTextTheme,
        textColor: darkest,
      ),
      textSelectionTheme: _textSelectionTheme(
        darkest: darkest,
        lighter: lighter,
        light: light,
      ),
      inputDecorationTheme: _inputDecorationTheme(
        lightest: lightest,
        light: light,
        darker: darker,
      ));
}

TextSelectionThemeData _textSelectionTheme({
  required Color darkest,
  required Color lighter,
  required Color light,
}) {
  return TextSelectionThemeData(
      cursorColor: darkest,
      selectionColor: lighter,
      selectionHandleColor: light);
}

InputDecorationTheme _inputDecorationTheme(
    {required Color lightest, required Color light, required Color darker}) {
  return InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
    filled: true,
    fillColor: lightest,
    focusColor: light,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: light),
      borderRadius: BorderRadius.zero,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: darker),
      borderRadius: BorderRadius.zero,
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: kRed),
      borderRadius: BorderRadius.zero,
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: kRed),
      borderRadius: BorderRadius.zero,
    ),
    errorStyle: const TextStyle(
      fontSize: 12,
    ),
  );
}

TextTheme _buildTextTheme({required TextTheme base, required Color textColor}) {
  return base.apply(
    fontFamily: 'NotoSerifJP',
    displayColor: textColor,
    bodyColor: textColor,
  );
}
