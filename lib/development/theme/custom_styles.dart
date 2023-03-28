import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  static BorderRadius kBorderRadius = BorderRadius.circular(20);
  static Radius kRadius = const Radius.circular(20);

  static TextStyle kTitleLarge = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static TextStyle kTitleMedium = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );
  static TextStyle kTitleSmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static TextStyle kBodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
  );
  static TextStyle kBodyMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  );
  static TextStyle kBodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
  );

  static TextStyle kLabelLarge = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );
  static TextStyle kLabelMedium = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );
  static TextStyle kLabelSmall = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static TextStyle kDisplayLarge = GoogleFonts.roboto(
    fontSize: 57,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle kDisplayMedium = GoogleFonts.roboto(
    fontSize: 45,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );
  static TextStyle kDisplaySmall = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );

  static TextStyle kHeadlineLarge = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle kHeadlineMedium = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  static TextStyle kHeadlineSmall = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

// Text Input Style
  InputDecoration buildInputDecoration(
      {String label = '',
      String hintText = '',
      Color primaryColor = Colors.grey,
      Color secondaryColor = Colors.blue,
      Color backgroundColor = Pallete.blackColor,
      IconData? icon,
      IconData? suffixIcon,
      Function? suffixIconOnPressed,
      bool withBorder = true}) {
    return InputDecoration(
      // labelText: label,
      // labelStyle: kLabelLarge,
      prefixIcon: Icon(
        icon,
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: GestureDetector(
          onTap: () {
            if (suffixIconOnPressed != null) {
              suffixIconOnPressed();
            }
          },
          child: Icon(
            suffixIcon,
          ),
        ),
      ),
      filled: true,
      fillColor: backgroundColor,
      hintText: hintText,
      hintStyle: kBodyLarge.copyWith(color: Colors.grey.withOpacity(.75)),
      labelStyle: kBodyLarge.copyWith(color: Colors.grey.withOpacity(.75)),
      contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: withBorder ? secondaryColor : Colors.transparent, width: 1.0),
        borderRadius: BorderRadius.all(kRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: withBorder ? primaryColor : Colors.transparent, width: 1.0),
        borderRadius: BorderRadius.all(kRadius),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: withBorder ? Colors.red : Colors.transparent, width: 1.0),
        borderRadius: BorderRadius.all(kRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: withBorder ? primaryColor : Colors.transparent, width: 1.0),
        borderRadius: BorderRadius.all(kRadius),
      ),
    );
  }
}
