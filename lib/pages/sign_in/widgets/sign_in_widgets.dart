import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/utils/app_color.dart';
import 'package:online_course_app/common/widgets/app_shadow.dart';
import 'package:online_course_app/common/widgets/image_widgets.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    title: text16Normal('Sign In', color: AppColors.primaryText),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey,
        height: 1,
      ),
    ),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 20.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _loginButton('assets/icons/google.png'),
        SizedBox(width: 20.w),
        _loginButton('assets/icons/facebook.png'),
      ],
    ),
  );
}

Widget _loginButton(String iconPath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.asset(iconPath),
    ),
  );
}

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
                margin: EdgeInsets.only(left: 10.w),
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
