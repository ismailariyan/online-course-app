import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_course_app/common/utils/app_styles.dart';
import 'package:online_course_app/pages/sign_in/sign_in.dart';
import 'package:online_course_app/pages/sign_up/sign_up.dart';
import 'package:online_course_app/pages/welcome/welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        theme: AppTheme.appThemeData,
        initialRoute: "/",
        routes: {
          "/": (context) => Welcome(),
          "/signIn": (context) => const SignIn(),
          "/signUp": (context) => const SignUP(),
        },
        // home: Welcome(),
      ),
    );
  }
}
