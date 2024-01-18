import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/widgets/app_shadow.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';

Widget appButton({
  String buttonName = "",
  double width = 325,
  double height = 50,
  bool isLogin = true,
  BuildContext? context,
  void Function()? onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(),
      alignment: Alignment.center,
      child: text16Normal(buttonName, color: Colors.white),
    ),
  );
}
