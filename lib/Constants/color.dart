import 'package:flutter/material.dart';

const MaterialColor maincolor =
    MaterialColor(_maincolorPrimaryValue, <int, Color>{
  50: Color(0xFFE8F4F7),
  100: Color(0xFFC6E3EC),
  200: Color(0xFFA0D1E0),
  300: Color(0xFF79BFD3),
  400: Color(0xFF5DB1C9),
  500: Color(_maincolorPrimaryValue),
  600: Color(0xFF3A9BBA),
  700: Color(0xFF3291B2),
  800: Color(0xFF2A88AA),
  900: Color(0xFF1C779C),
});
const int _maincolorPrimaryValue = 0xFF40A3C0;

const MaterialColor maincolorAccent =
    MaterialColor(_maincolorAccentValue, <int, Color>{
  100: Color(0xFFD4F2FF),
  200: Color(_maincolorAccentValue),
  400: Color(0xFF6ED2FF),
  700: Color(0xFF55CAFF),
});
const int _maincolorAccentValue = 0xFFA1E2FF;
