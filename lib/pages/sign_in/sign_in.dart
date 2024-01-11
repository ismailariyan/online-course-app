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
              text14Normal('Or sign in with email'),
              SizedBox(height: 50.h),
              appTextField(text: 'Email'),
              SizedBox(height: 20.h),
              appTextField(text: 'Password'),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO : Compltted up to 4h:45mins