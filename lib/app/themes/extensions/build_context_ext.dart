import 'package:athletic_hub/app/themes/app_theme.dart';
import 'package:athletic_hub/app/themes/colors_palette.dart';
import 'package:athletic_hub/app/themes/text_styles.dart';
import 'package:athletic_hub/app/themes/theme_style.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ColorsPalette get colors =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.colors;

  TextStyles get textStyles =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.styles;

  Brightness get brightness =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.brightness;
}
