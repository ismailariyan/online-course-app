import 'package:flutter/material.dart';
import 'package:online_course_app/common/utils/app_color.dart';
import 'package:online_course_app/common/widgets/text_widgets.dart';

AppBar buildAppBar() {
  return AppBar(
    // automaticallyImplyLeading: false,
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
