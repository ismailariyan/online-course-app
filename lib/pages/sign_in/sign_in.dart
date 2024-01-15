import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          appBar: buildAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartyLogin(),
              Center(child: text14Normal('Or sign in with email')),
              SizedBox(height: 50.h),
              appTextField(
                  text: 'Email',
                  iconPath: 'assets/icons/user.png',
                  hint: 'Enter your email'),
              SizedBox(height: 20.h),
              appTextField(
                  text: 'Password',
                  iconPath: 'assets/icons/lock.png',
                  hint: 'Enter your password'),
              // SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  print('HEHEHEEHEHE');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25.w, top: 15.h),
                  child: text14Normal('Forgot password?'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
