import 'package:flutter/material.dart';
import 'package:show_bazzar/Theme/text_theme.dart';
import 'package:show_bazzar/core/utils/theme/widget_themes/appbar_theme.dart';
import 'package:show_bazzar/core/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:show_bazzar/core/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:show_bazzar/core/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:show_bazzar/core/utils/theme/widget_themes/text_field_theme.dart';

import '../core/utils/theme/widget_themes/chip_theme.dart';
import '../core/utils/theme/widget_themes/elevated_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}
