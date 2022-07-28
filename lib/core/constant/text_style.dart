import 'package:flutter/material.dart';

import 'color_constant.dart';
import 'font_constant.dart';

class TextStyles {

  static TextStyle regularText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorConstant.buttonBorderColor,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle lightText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorConstant.gray,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle mediumText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorConstant.gray,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }


  static TextStyle semiBoldText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 40,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ColorConstant.navyBlue,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }


  static TextStyle boldText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 20,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? ColorConstant.white,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }

  static TextStyle normalFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.buttonBorderColor,
      fontWeight: FontWeight.w400,
      fontSize: 16
  );
  static TextStyle tabTextFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.buttonBorderColor,
      fontWeight: FontWeight.w600,
      fontSize: 16
  );

  static TextStyle headTextFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.buttonBorderColor,
      fontWeight: FontWeight.w500,
      fontSize: 28
  );
  static TextStyle starFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.starColor,
      fontWeight: FontWeight.w500,
      fontSize: 12
  );
  static TextStyle deleteFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.deleteColor,
      fontWeight: FontWeight.w500,
      fontSize: 12
  );
  static TextStyle menuTextFont =  TextStyle(
      fontStyle: FontStyle.normal,
      color: ColorConstant.buttonBorderColor,
      fontWeight: FontWeight.w500,
      fontSize: 20
  );
}
