import 'package:flutter/material.dart';

extension CustomButton on TextButton {
  static defaultButton({
    required final String title,
    final double? titleSize,
    final Color? titleColor,
    final FontWeight? titleFontWeight,
    final Color? buttonDefaultColor,
    final Color? buttonDefaultBorderColor = Colors.transparent,
    final double? borderButtonWidth = 0.0,
    final BorderStyle? borderStyle = BorderStyle.none,
    final VoidCallback? onPressed,
    final double? height,
    final double? width,
    final EdgeInsetsGeometry? margin,
    final EdgeInsetsGeometry? padding,
    final bool? toUpperCaseTitle = true,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      child: ButtonTheme(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            toUpperCaseTitle! ? title.toUpperCase() : title,
            style: TextStyle(
              color: titleColor,
              fontSize: titleSize,
              fontWeight: titleFontWeight ?? FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: buttonDefaultBorderColor!,
                width: borderButtonWidth!,
                style: borderStyle!,
              ),
            ),
            backgroundColor: buttonDefaultColor,
          ),
        ),
      ),
    );
  }

  static circularButton({
    required final String title,
    final Color? titleColor,
    final double? titleSize,
    final FontWeight? titleFontWeight,
    final Color? circularButtonColor,
    final Color? circularButtonBorderColor = Colors.transparent,
    final double? borderButtonWidth = 0.0,
    final BorderStyle? borderStyle = BorderStyle.none,
    final VoidCallback? onPressed,
    final double? height,
    final double? width,
    final EdgeInsetsGeometry? margin,
    final EdgeInsetsGeometry? padding,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      child: ButtonTheme(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: titleColor,
              fontWeight: titleFontWeight ?? FontWeight.w600,
              fontSize: titleSize,
            ),
            textAlign: TextAlign.center,
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
              side: BorderSide(
                color: circularButtonBorderColor!,
                width: borderButtonWidth!,
                style: borderStyle!,
              ),
            ),
            backgroundColor: circularButtonColor,
          ),
        ),
      ),
    );
  }

  static loadingButton({
    final Color? buttonColor,
    final Color? buttonBorderColor,
    final Color? loadingColor,
    final double? height,
    final double? width,
    final EdgeInsetsGeometry? margin,
    final EdgeInsetsGeometry? padding,
    final VoidCallback? onPressed,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      color: buttonColor,
      child: TextButton(
        onPressed: onPressed,
        child: CircularProgressIndicator(
          color: loadingColor ?? Colors.white,
        ),
      ),
    );
  }
}
