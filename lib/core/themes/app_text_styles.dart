import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static const String _fontFamily = 'Poppins';

  // Bold
  static TextStyle font30Bold = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    height: 1.30,
    letterSpacing: 0.90,
  );

  static TextStyle font25Bold = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 25.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font20Bold = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font15Bold = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
  );

  // Medium
  static TextStyle font15Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font12Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font10Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  // Regular
  static TextStyle font15Regular = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
}
