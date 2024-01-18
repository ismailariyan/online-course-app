import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app/common/utils/app_color.dart';
import 'package:online_course_app/common/widgets/app_textFields.dart';
import 'package:online_course_app/common/widgets/button_widgets.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';
import 'package:online_course_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 249, 255),
      child: SafeArea(
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          // appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Center(
                  child: Image.asset('assets/images/anondopath_logo.png',
                      width: 200.w, height: 180.h),
                ),
                SizedBox(height: 10.h),
                appTextField(
                  text: 'Email',
                  iconPath: 'assets/icons/user.png',
                  hint: 'Enter your email',
                  onChanged: (value) {},
                ),
                SizedBox(height: 20.h),
                appTextField(
                  text: 'Password',
                  iconPath: 'assets/icons/lock.png',
                  hint: 'Enter your password',
                  onChanged: (value) {},
                ),
                SizedBox(height: 10.h),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: textUndelineButton('Forget password?'),
                ),
                SizedBox(height: 20.h),
                Center(child: appButton(buttonName: 'Sign In')),
                SizedBox(height: 20.h),
                Center(child: text14Normal('Or Continue with')),
                thirdPartyLogin(),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text14Normal('Don\'t have an account?  '),
                    textUndelineButton('Sign Up',
                        fontSize: 14,
                        color: AppColors.primaryElement,
                        context: context, onTap: () {
                      Navigator.pushNamed(context, '/signUp');
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
