import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColors {
  bool darkMode = true;

  CustomColors({this.darkMode});

//darkmode colors
  Color _darkModeSecondaryColor = Color(0xff182430);
  Color _darkModePrimaryColor = Color(0xff1E2C39);
  Color _darkModeAccentColor = Color(0xff1D8ED4);
  Color _darkModeWhite = Colors.white;
  Color _darkModeGrey = Color(0xff535252);
  Color _darkModeDarkGrey = Colors.grey[900];
  Color _darkModeSubtitleText = Colors.grey[600];
  Color _darkModeRed = Colors.red;

  //light mode colors
  Color _lightModeSecondaryColor = Color(0xff1D8ED4);
  Color _lightModePrimaryColor = Colors.white;
  Color _lightModeAccentColor = Color(0xff1D8ED4);
  Color _lightModeWhite = Colors.black;
  Color _lightModeGrey = Colors.grey[800];
  Color _lightModeSubtitleText = Colors.grey[600];
  Color _lightModeRed = Colors.red;

  get secondaryColor =>
      darkMode ? _darkModeSecondaryColor : _lightModeSecondaryColor;

  get primaryColor => darkMode ? _darkModePrimaryColor : _lightModePrimaryColor;

  get accentColor => darkMode ? _darkModeAccentColor : _lightModeAccentColor;

  get white => darkMode ? _darkModeWhite : _lightModeWhite;

  get grey => darkMode ? _darkModeGrey : _lightModeGrey;

  get darGrey => darkMode ? _darkModeDarkGrey : _lightModeGrey;

  get subtitleText => darkMode ? _darkModeSubtitleText : _lightModeSubtitleText;

  get red => darkMode ? _darkModeRed : _lightModeRed;
}
