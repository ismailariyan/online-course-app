import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/widgets/app_shadow.dart';
import 'package:online_course_app/common/widgets/image_widgets.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';

Widget appTextField(
    {String text = "", String iconPath = "", String hint = "set hint text"}) {
  return Container(
    padding: EdgeInsets.only(
      left: 25.w,
      right: 25.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text),
        Container(
          width: 325.h,
          height: 50.h,
          decoration: appBoxDecorationTextField(
              color: Colors.white, borderColor: Colors.white),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.w, bottom: 3.h),
                child: appImage(imagePath: iconPath),
              ),
              Container(
                width: 280.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hint,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: text == 'Password' ? true : false,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
