import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';
import 'package:travel/main.dart';

class Onboarding4 extends StatefulWidget {
  Onboarding4({super.key});

  @override
  State<Onboarding4> createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
  List<String> language = [
    "English",
    "Hindi",
    "Arabic",
    "Telgu",
    "Malyayam",
    "Japnese",
    "Chinese"
  ];

  int selectedtabindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox(20.h),
            Padding(
              padding: const EdgeInsets.only(left: 105),
              child: Text(
                "Choose Language",
                style: TextStyle(fontFamily: Typo.ManoMedium, fontSize: 16.sp),
              ),
            ),
            heightBox(45.h),
            Wrap(
              //ListViewUses With Wrap widget
              spacing: 15,
              runSpacing: 23,
              children: List.generate(
                language.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedtabindex = index;
                    setState(() {
                      Future.delayed(Duration(seconds: 1), () {
                        GoRouter.of(context).goNamed(
                            "LoginScreen"); //here we call router in set state
                      });
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: index == selectedtabindex
                                ? Colors.blue
                                : Colors.grey)),
                    child: Text(
                      style: TextStyle(
                          fontFamily: Typo.ManoMedium,
                          fontSize: 16.sp,
                          color: index == selectedtabindex
                              ? Colors.blue
                              : Colors.grey),
                      language[index],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
