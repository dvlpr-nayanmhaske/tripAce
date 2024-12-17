import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';

class Onboarding extends StatefulWidget {
  // Changed to StatefulWidget
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController(); // Controller for PageView
  int _currentpage = 0; // Tracks current page index

  // Function to handle Next button navigation
  void _nextPage(BuildContext context) {
    if (_currentpage < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
    } else {
      GoRouter.of(context).goNamed('Onboarding4'); // Updated navigation
    }
  }

  // Function to handle Skip button navigation
  void _skipToLastPage(BuildContext context) {
    GoRouter.of(context).goNamed('Onboarding4'); // Direct navigation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _currentpage = index; // Updates current page index
                      });
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: [
                      CustomContainer(
                          img: "assets/image/img1.png",
                          T1: "Find Cheaper\nFlights Instantly",
                          T2: "Compare prices from all flight booking services in one place. Book the best deal effortlessly!",
                          onNext: () => _nextPage(context),
                          onSkip: () => _skipToLastPage(context)),
                      CustomContainer(
                          img: "assets/image/img2.png",
                          T1: "Let AI Plan Your\nDream Trip",
                          T2: "Let our smart AI create personalized itineraries based on your preferences. From destinations to activities, plan your ideal trip in minutes without the hassle.",
                          onNext: () => _nextPage(context),
                          onSkip: () => _skipToLastPage(context)),
                      CustomContainer(
                          img: "assets/image/img3.png",
                          T1: "Discover Exciting\nHoliday Packages",
                          T2: "Book personalized holiday packages tailored to your travel style.",
                          onNext: () => _nextPage(context),
                          onSkip: () => _skipToLastPage(context)),
                    ],
                  ),
                  Positioned(
                    bottom: 70,
                    left: 20,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotHeight: 5,
                          dotColor: const Color(0xffFFFFFF),
                          activeDotColor: AppColors.PrimaryColor),
                      onDotClicked: (index) {
                        pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeInOut);
                        log("Dot clicked: $index");
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable container widget with callbacks for next and skip buttons
Container CustomContainer(
    {required String img,
    required String T1,
    required String T2,
    required VoidCallback onNext,
    required VoidCallback onSkip}) {
  return Container(
    padding: const EdgeInsets.all(20),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: onSkip, // Skip button callback
              child: Text(
                "Skip>",
                style: TextStyle(
                    fontFamily: Typo.ManoRegular, color: Colors.white),
              ),
            )
          ],
        ),
        heightBox(500.h),
        Text(
          T1,
          style: TextStyle(
            fontFamily: Typo.ManoSemiBold,
            fontSize: 28.sp,
            color: Colors.white,
          ),
        ),
        heightBox(19.h),
        Text(
          T2,
          style: TextStyle(
            fontFamily: Typo.ManoRegular,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton.filled(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white)),
              onPressed: onNext, // Next button callback
              icon: Icon(
                Icons.chevron_right_outlined,
                color: Colors.grey,
                size: 30.sp,
              ),
            )
          ],
        )
      ],
    ),
  );
}
