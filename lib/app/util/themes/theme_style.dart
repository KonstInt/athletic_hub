import 'package:athletic_hub/app/util/themes/colors_palette.dart';
import 'package:athletic_hub/app/util/themes/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeStyle extends ThemeExtension<ThemeStyle> {
  ThemeStyle({
    required this.colors,
    required this.styles,
    required this.brightness,
  });

  final ColorsPalette colors;
  final TextStyles styles;
  final Brightness brightness;

  @override
  ThemeExtension<ThemeStyle> copyWith() => this;

  @override
  ThemeExtension<ThemeStyle> lerp(
    ThemeExtension<ThemeStyle>? other,
    double t,
  ) =>
      this;
}
