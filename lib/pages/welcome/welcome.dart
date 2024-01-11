import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:online_course_app/common/utils/app_color.dart';
import 'package:online_course_app/pages/welcome/notifier/welcome_notifier.dart';
import 'package:online_course_app/pages/welcome/widgets.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: const Color.fromARGB(255, 245, 249, 255),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signIn');
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Color(0xFF202244)),
                  ))
            ],
            backgroundColor: Colors.transparent,
          ),
          body: Container(
            margin: EdgeInsets.only(top: 100.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  children: [
                    appOnboardingPage(
                      _controller,
                      imagePath: 'assets/images/online_learning.svg',
                      title: 'Online Learning',
                      subTitle:
                          'We Provide Classes Online Classes and Pre Recorded Leactures!',
                      index: 1,
                      context: context,
                    ),
                    appOnboardingPage(
                      _controller,
                      imagePath: 'assets/images/learning.svg',
                      title: 'Learn from Anytime',
                      subTitle:
                          'Booked or Same the Lectures for Future. HEHEHEHEHEHEdfhdfdfd',
                      index: 2,
                      context: context,
                    ),
                    appOnboardingPage(
                      _controller,
                      imagePath: 'assets/images/education.svg',
                      title: 'Quality Education',
                      subTitle:
                          'Unlock your potential with our high-quality educational content.',
                      index: 3,
                      context: context,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        activeColor: AppColors.primaryElement,
                        size: const Size.square(9.0),
                        activeSize: const Size(24, 8),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.w))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
