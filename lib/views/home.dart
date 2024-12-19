import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:travel/const/AssetUrl.dart';

import 'package:travel/views/explore_Screen.dart';
import 'package:travel/views/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class CustomeBottomaApbar {
  String? icon;
  String? title;
  CustomeBottomaApbar({this.icon, this.title});
}

List<CustomeBottomaApbar> navigation = [
  CustomeBottomaApbar(
    icon: Asseturl.ighome,
    title: "home",
  ),
  CustomeBottomaApbar(icon: Asseturl.igexplore, title: "explore"),
  CustomeBottomaApbar(icon: Asseturl.icAiplaner, title: "AI Planner"),
  CustomeBottomaApbar(icon: Asseturl.ignews, title: "news & bills"),
];

class _HomeState extends State<Home> {
  int selectedBottomBarIndex = 0;
  List screens = [
    HomeScreen(),
    ExploreScreen(),
    HomeScreen(),
    ExploreScreen(),
  ];

  // int selectedBottomBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedBottomBarIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 75.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.25),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(14.r), topLeft: Radius.circular(14.r)),
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navigation.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedBottomBarIndex = index;
                });
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    navigation[index].icon!,
                    color: selectedBottomBarIndex == index
                        ? Colors.blue
                        : Colors.black,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    navigation[index].title!,
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
