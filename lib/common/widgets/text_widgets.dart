import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/utils/app_color.dart';

Widget text24Normal(String text, {Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget text16Normal(String text,
    {Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14Normal(String text,
    {Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget textUndelineButton(String text,
    {Color color = AppColors.primarySecondaryElementText,
    int fontSize = 12,
    BuildContext? context,
    void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: color,
      ),
    ),
  );
}
