import 'package:athletic_hub/app/themes/colors_palette.dart';
import 'package:athletic_hub/app/themes/text_styles.dart';
import 'package:athletic_hub/app/themes/theme_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.light(
          onSurface: lightPalette.deepBlue,
          primary: lightPalette.black,
          secondary: lightPalette.blackOpacity60,
          shadow: const Color.fromARGB(255, 0, 0, 0),
          onBackground: lightPalette.white,
          background: lightPalette.black7,
        ),
        brightness: Brightness.light,
        scaffoldBackgroundColor: lightPalette.black7,
        extensions: [
          ThemeStyle(
            colors: lightPalette,
            styles: textStyles,
            brightness: Brightness.dark,
          ),
        ],
      );

  static ThemeData get darkTheme => ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.dark(
          primary: lightPalette.black,
          secondary: lightPalette.blackOpacity60,
          shadow: const Color.fromARGB(255, 0, 0, 0),
          onBackground: lightPalette.white,
          background: lightPalette.black7,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: darkPalette.black7,
        extensions: [
          ThemeStyle(
            colors: darkPalette,
            styles: textStyles,
            brightness: Brightness.light,
          ),
        ],
      );

  static const ColorsPalette lightPalette = ColorsPalette(
    // Monochrome
    black: Color(0xFF000000),
    black90: Color(0xFF1A1A1A),
    black80: Color(0xFF333333),
    black70: Color(0xFF4C4C4C),
    black60: Color(0xFF666666),
    black50: Color(0xFF808080),
    black40: Color(0xFF999999),
    black30: Color(0xFFB3B3B3),
    black20: Color(0xFFCCCCCC),
    black16: Color(0xFFD9D9D9),
    black12: Color(0xFFE5E5E5),
    black7: Color(0xFFEDEDED),
    black4: Color(0xFFF5F5F5),
    white: Color(0xFFFFFFFF),

    // Transparency
    blackOpacity90: Color(0xE6000000),
    blackOpacity80: Color(0xCC000000),
    blackOpacity70: Color(0xB3000000),
    blackOpacity60: Color(0x99000000),
    blackOpacity50: Color(0x80000000),
    blackOpacity40: Color(0x66000000),
    blackOpacity30: Color(0x4D000000),
    blackOpacity20: Color(0x33000000),
    blackOpacity16: Color(0x29000000),
    blackOpacity12: Color(0x1F000000),
    blackOpacity7: Color(0x12000000),
    blackOpacity4: Color(0x0A000000),

    whiteOpacity90: Color(0xE6FFFFFF),
    whiteOpacity80: Color(0xCCFFFFFF),
    whiteOpacity70: Color(0xB3FFFFFF),
    whiteOpacity60: Color(0x99FFFFFF),
    whiteOpacity50: Color(0x80FFFFFF),
    whiteOpacity40: Color(0x66FFFFFF),
    whiteOpacity30: Color(0x4DFFFFFF),
    whiteOpacity20: Color(0x33FFFFFF),
    whiteOpacity16: Color(0x29FFFFFF),
    whiteOpacity12: Color(0x1FFFFFFF),
    whiteOpacity10: Color(0x1AFFFFFF),
    whiteOpacity7: Color(0x12FFFFFF),

    // Additional
    aquaBlue: Color(0xFF00B1FF),
    aquaLightBlue: Color(0x2600B1FF),
    deepBlue: Color(0xFF0C4B85),
    pantherPink: Color(0xFFFF6A9C),
    sunnyYellow: Color(0xFFFFDA44),
    red: Color(0xFFFFE8E0),
    green: Color.fromARGB(255, 147, 229, 39),

    // Gradient
    blueGradient: LinearGradient(
      colors: <Color>[
        Color(0xFF00B1FF),
        Color(0xFF00CEFF),
      ],
    ),

    disabled: Color(0xFFD9D9D9),
  );

  static const ColorsPalette darkPalette = ColorsPalette(
    // Monochrome
    black: Color(0xFF000000),
    black90: Color(0xFF1A1A1A),
    black80: Color(0xFF333333),
    black70: Color(0xFF4C4C4C),
    black60: Color(0xFF666666),
    black50: Color(0xFF808080),
    black40: Color(0xFF999999),
    black30: Color(0xFFB3B3B3),
    black20: Color(0xFFCCCCCC),
    black16: Color(0xFFD9D9D9),
    black12: Color(0xFFE5E5E5),
    black7: Color(0xFFEDEDED),
    black4: Color(0xFFF5F5F5),
    white: Color(0xFFFFFFFF),

    // Transparency
    blackOpacity90: Color(0xE6000000),
    blackOpacity80: Color(0xCC000000),
    blackOpacity70: Color(0xB3000000),
    blackOpacity60: Color(0x99000000),
    blackOpacity50: Color(0x80000000),
    blackOpacity40: Color(0x66000000),
    blackOpacity30: Color(0x4D000000),
    blackOpacity20: Color(0x33000000),
    blackOpacity16: Color(0x29000000),
    blackOpacity12: Color(0x1F000000),
    blackOpacity7: Color(0x12000000),
    blackOpacity4: Color(0x0A000000),

    whiteOpacity90: Color(0xE6FFFFFF),
    whiteOpacity80: Color(0xCCFFFFFF),
    whiteOpacity70: Color(0xB3FFFFFF),
    whiteOpacity60: Color(0x99FFFFFF),
    whiteOpacity50: Color(0x80FFFFFF),
    whiteOpacity40: Color(0x66FFFFFF),
    whiteOpacity30: Color(0x4DFFFFFF),
    whiteOpacity20: Color(0x33FFFFFF),
    whiteOpacity16: Color(0x29FFFFFF),
    whiteOpacity12: Color(0x1FFFFFFF),
    whiteOpacity10: Color(0x1AFFFFFF),
    whiteOpacity7: Color(0x12FFFFFF),

    // Additional
    aquaBlue: Color(0xFF00B1FF),
    aquaLightBlue: Color(0x2600B1FF),
    deepBlue: Color(0xFF0C4B85),
    pantherPink: Color(0xFFFF6A9C),
    sunnyYellow: Color(0xFFFFDA44),
    red: Color(0xFFFFE8E0),
    green: Color.fromARGB(255, 119, 192, 24),

    // Gradient
    blueGradient: LinearGradient(
      colors: <Color>[
        Color(0xFF00B1FF),
        Color(0xFF00CEFF),
      ],
    ),

    disabled: Color(0xFFDCDEF8),
  );

  static TextStyles textStyles = TextStyles(
    title1R: RobotoStyle.title1R,
    title1M: RobotoStyle.title1M,
    title1B: RobotoStyle.title1B,
    title2R: RobotoStyle.title2R,
    title2M: RobotoStyle.title2M,
    title2B: RobotoStyle.title2B,
    headlineR: RobotoStyle.headlineR,
    headlineM: RobotoStyle.headlineM,
    headlineB: RobotoStyle.headlineB,
    bodyR: RobotoStyle.bodyR,
    bodyM: RobotoStyle.bodyM,
    bodyB: RobotoStyle.bodyB,
    bodyBItalic: RobotoStyle.bodyBItalic,
    descriptionR: RobotoStyle.descriptionR,
    descriptionM: RobotoStyle.descriptionM,
    descriptionB: RobotoStyle.descriptionB,
    smallR: RobotoStyle.smallR,
    smallM: RobotoStyle.smallM,
    smallB: RobotoStyle.smallB,
    microR: RobotoStyle.microR,
    microM: RobotoStyle.microM,
    microB: RobotoStyle.microB,
  );
}
