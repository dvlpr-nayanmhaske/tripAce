import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';

class options {
  String? title;
  String? icon;
  options({this.title, this.icon});
}

List<options> OptionsList = [
  options(
    title: "Hotels",
    icon: Asseturl.ighotel,
  ),
  options(
    title: "Things to do",
    icon: Asseturl.igthings,
  ),
  options(
    title: "Food",
    icon: Asseturl.igfood,
  ),
];

class City {
  String? image;
  String? title1;
  String? icon1;
  String? title2;
  String? icon2;
  String? title3;
  City(
      {this.image,
      this.title1,
      this.icon1,
      this.title2,
      this.icon2,
      this.title3});
}

List<City> placesList = [
  City(
      image: Asseturl.icMountFanjing,
      title1: "Mount fanjing",
      icon1: Asseturl.iglocation,
      title2: "120 KM",
      icon2: Asseturl.igStar,
      title3: "4.8"),
  City(
      image: Asseturl.icTajmahal,
      title1: "City of Taj Mahal",
      icon1: Asseturl.iglocation,
      title2: "120 KM",
      icon2: Asseturl.igStar,
      title3: "4.8"),
  City(
      image: Asseturl.icWall,
      title1: "Wall of China",
      icon1: Asseturl.iglocation,
      title2: "120 KM",
      icon2: Asseturl.igStar,
      title3: "4.8")
];

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 19.r,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: AppColors.PrimaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            heightBox(8.h),
            Container(
              height: 43.h,
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 8),
                      blurRadius: 8,
                      color: Colors.black.withOpacity(
                        0.02,
                      ),
                    ),
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                  border: InputBorder.none,
                  hintText: "Search here...",
                  suffixIcon: SvgPicture.asset(
                    Asseturl.igSearch,
                    height: 13.676.h,
                    width: 13.67.w,
                    fit: BoxFit.scaleDown,
                  ),
                  hintStyle: TextStyle(
                      color: const Color(0xff6C757D), fontSize: 12.sp),
                ),
              ),
            ),
            heightBox(17.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  OptionsList.length,
                  (index) => Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 29.h,
                    width: 127.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: Color(0xffF2F3F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          OptionsList[index].title!,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        widthBox(8.w),
                        SvgPicture.asset(
                          OptionsList[index].icon!,
                          height: 18,
                          width: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            heightBox(31.h),
            Text(
              "Explore Trending Places",
              style: TextStyle(
                fontFamily: Typo.ManoSemiBold,
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  placesList.length,
                  (index) => Container(
                    height: 144.h,
                    width: 144.h,
                    
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
