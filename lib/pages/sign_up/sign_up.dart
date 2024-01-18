import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/widgets/app_bar.dart';
import 'package:online_course_app/common/widgets/app_textFields.dart';
import 'package:online_course_app/common/widgets/button_widgets.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 249, 255),
      child: SafeArea(
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Center(child: text14Normal('Enter your detail below')),
                SizedBox(height: 10.h),
                appTextField(
                    text: 'Username',
                    iconPath: 'assets/icons/user.png',
                    hint: 'Enter your Username'),
                SizedBox(height: 10.h),
                appTextField(
                    text: 'Email',
                    iconPath: 'assets/icons/user.png',
                    hint: 'Enter your email'),
                SizedBox(height: 10.h),
                appTextField(
                    text: 'Password',
                    iconPath: 'assets/icons/lock.png',
                    hint: 'Enter your password'),
                SizedBox(height: 10.h),
                appTextField(
                    text: 'Confirm Password',
                    iconPath: 'assets/icons/lock.png',
                    hint: 'Confirm your password'),
                SizedBox(height: 10.h),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: text14Normal('Agree with the TCA and Privacy Policy'),
                ),
                SizedBox(height: 30.h),
                Center(
                    child: appButton(
                  buttonName: 'Sign Up',
                  context: context,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
