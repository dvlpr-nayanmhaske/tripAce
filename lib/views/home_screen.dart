import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';
import 'package:travel/main.dart';

class Category {
  String icon;
  String? title;
  Category({required this.icon, this.title});
}

List<Category> categoryList1 = [
  Category(icon: Asseturl.igFlight, title: "Flight"),
  Category(icon: Asseturl.ighotels, title: "Hotels"),
  Category(icon: Asseturl.igPakages, title: "Pakages"),
];
List<Category> categoryList2 = [
  Category(icon: Asseturl.igrentalCar, title: "Rental Cars & Bikes"),
  Category(icon: Asseturl.igTrain, title: "Trains & Bus"),
  Category(icon: Asseturl.igDiscount, title: "Special Discounts"),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                heightBox(100.h),
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 14.sp),
                ),
                Text(
                  " Nayan!",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
                widthBox(150.w),
                SvgPicture.asset(
                  Asseturl.igindia,
                ),
                widthBox(5.w),
                Text(
                  "INR",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                widthBox(10.w),
                CircleAvatar(
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
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 8),
                      blurRadius: 8,
                      color: Colors.black.withOpacity(
                        0.02,
                      ),
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                            color: Color(0xff6C757D), fontSize: 12.sp),
                      ),
                    ),
                  ),
                  SvgPicture.asset(Asseturl.igSearch)
                ],
              ),
            ),
            heightBox(22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categoryList1.length,
                (index) => Container(
                  width: 103.w,
                  height: 73.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F5),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(categoryList1[index].icon),
                            heightBox(5.h),
                            Text(categoryList1[index].title!)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            heightBox(27.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categoryList2.length,
                (index) => Container(
                  height: 73.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.w,
                        width: 40.w,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF2F3F5),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(categoryList2[index].icon),
                          ),
                        ),
                      ),
                      heightBox(5.h),
                      Text(categoryList2[index].title!)
                    ],
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
