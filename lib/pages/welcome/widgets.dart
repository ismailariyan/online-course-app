import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course_app/common/widgets/app_shadow.dart';

import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, {
  String imagePath = "assets/images/learning.svg",
  String title = "",
  String subTitle = "",
  int index = 0,
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
      _nextButton(index, controller),
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      }
    },
    child: Container(
      width: 300,
      height: 70,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(child: text16Normal('Next', color: Colors.white)),
    ),
  );
}
