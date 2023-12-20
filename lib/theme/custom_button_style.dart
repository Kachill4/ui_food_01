import 'dart:ui';
import 'package:ui_food_01/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineGray1 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray400,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlineOnPrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 4,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineOnPrimaryTL10 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.greenA700,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineOnPrimaryTL101 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.yellow900,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineOnPrimaryTL11 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray600,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.h),
        ),
      );
  static ButtonStyle get outlineOnPrimaryTL15 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.yellow900,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineOnPrimaryTL5 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.red600,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL15 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL7 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray800,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
