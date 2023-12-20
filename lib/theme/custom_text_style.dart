import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDaysOnePrimary =>
      theme.textTheme.bodyLarge!.daysOne.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeMPLUS1 => theme.textTheme.bodyLarge!.mPLUS1;
  static get bodyLargeMarkoOne => theme.textTheme.bodyLarge!.markoOne;
  static get bodyLargeMarkoOnePrimary =>
      theme.textTheme.bodyLarge!.markoOne.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumLemonWhiteA700 =>
      theme.textTheme.bodyMedium!.lemon.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumLohitTamilPrimary =>
      theme.textTheme.bodyMedium!.lohitTamil.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumMPLUS1WhiteA700 =>
      theme.textTheme.bodyMedium!.mPLUS1.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumMochiyPopOneWhiteA700 =>
      theme.textTheme.bodyMedium!.mochiyPopOne.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallHoltwoodOneSCAmberA700 =>
      theme.textTheme.bodySmall!.holtwoodOneSC.copyWith(
        color: appTheme.amberA700,
      );
  static get bodySmallHoltwoodOneSCWhiteA700 =>
      theme.textTheme.bodySmall!.holtwoodOneSC.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallLohitTamil =>
      theme.textTheme.bodySmall!.lohitTamil.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallLohitTamil11 =>
      theme.textTheme.bodySmall!.lohitTamil.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallLohitTamil_1 => theme.textTheme.bodySmall!.lohitTamil;
  static get bodySmallMPLUS1Bluegray400 =>
      theme.textTheme.bodySmall!.mPLUS1.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallMPLUS1WhiteA700 =>
      theme.textTheme.bodySmall!.mPLUS1.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallOrange900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange900,
      );
  // Display text style
  static get displayLargeYellow900 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.yellow900,
      );
  static get displayLargeYellow900_1 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.yellow900,
      );
  static get displayMedium49 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 49.fSize,
      );
  static get displayMediumHoltwoodOneSCWhiteA700 =>
      theme.textTheme.displayMedium!.holtwoodOneSC.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
      );
  static get displayMediumLondrinaSolidAmberA700 =>
      theme.textTheme.displayMedium!.londrinaSolid.copyWith(
        color: appTheme.amberA700,
        fontSize: 49.fSize,
      );
  static get displayMediumLondrinaSolidSecondaryContainer =>
      theme.textTheme.displayMedium!.londrinaSolid.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 49.fSize,
      );
  static get displayMediumYellow900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.yellow900,
      );
  static get displayMediumYellow90049 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.yellow900,
        fontSize: 49.fSize,
      );
  // Headline style
  static get headlineLargeLondrinaSolid =>
      theme.textTheme.headlineLarge!.londrinaSolid;
  // Title text style
  static get titleLargeDaysOne => theme.textTheme.titleLarge!.daysOne.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeKanitBluegray400 =>
      theme.textTheme.titleLarge!.kanit.copyWith(
        color: appTheme.blueGray400,
      );
}

extension on TextStyle {
  TextStyle get mPLUS1 {
    return copyWith(
      fontFamily: 'M PLUS 1',
    );
  }

  TextStyle get kanit {
    return copyWith(
      fontFamily: 'Kanit',
    );
  }

  TextStyle get londrinaSolid {
    return copyWith(
      fontFamily: 'Londrina Solid',
    );
  }

  TextStyle get mada {
    return copyWith(
      fontFamily: 'Mada',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get mochiyPopOne {
    return copyWith(
      fontFamily: 'Mochiy Pop One',
    );
  }

  TextStyle get lohitTamil {
    return copyWith(
      fontFamily: 'Lohit Tamil',
    );
  }

  TextStyle get luckiestGuy {
    return copyWith(
      fontFamily: 'Luckiest Guy',
    );
  }

  TextStyle get lemon {
    return copyWith(
      fontFamily: 'Lemon',
    );
  }

  TextStyle get daysOne {
    return copyWith(
      fontFamily: 'Days One',
    );
  }

  TextStyle get holtwoodOneSC {
    return copyWith(
      fontFamily: 'Holtwood One SC',
    );
  }

  TextStyle get markoOne {
    return copyWith(
      fontFamily: 'Marko One',
    );
  }
}
