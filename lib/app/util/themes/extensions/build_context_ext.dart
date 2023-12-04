import 'package:athletic_hub/app/util/themes/app_theme.dart';
import 'package:athletic_hub/app/util/themes/colors_palette.dart';
import 'package:athletic_hub/app/util/themes/text_styles.dart';
import 'package:athletic_hub/app/util/themes/theme_style.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ColorsPalette get colors =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.colors;

  TextStyles get textStyles =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.styles;

  Brightness get brightness =>
      AppTheme.lightTheme.extension<ThemeStyle>()!.brightness;
}
