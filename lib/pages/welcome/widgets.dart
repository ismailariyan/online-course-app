import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course_app/common/widgets/app_shadow.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, {
  String imagePath = "assets/images/learning.svg",
  String title = "",
  String subTitle = "",
  int index = 0,
  required BuildContext context,
}) {
  return Column(
    children: [
      SvgPicture.asset(
        imagePath,
        fit: BoxFit.fitWidth,
        width: 200,
        height: 200,
      ),
      Container(
        margin: const EdgeInsets.only(top: 25),
        child: text24Normal(title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      } else {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (ctx) => SignIn()));
        Navigator.pushReplacementNamed(
          context,
          '/signIn',
        );
      }
    },
    child: Container(
      width: 200.w,
      height: 50.h,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
          child: text16Normal(index < 3 ? 'Next' : 'Get Started',
              color: Colors.white)),
    ),
  );
}
