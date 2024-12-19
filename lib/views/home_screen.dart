import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';

import 'package:travel/main.dart';
import 'package:velocity_x/velocity_x.dart';

// class SpecialOfferClass {
//   String? title1;
//   String? title2;
//   String? title3;
//   String? title4;
//   String? title5;
//   String? cardicon;
//   String? image;
//   SpecialOfferClass(
//       {this.title1,
//       this.title2,
//       this.title3,
//       this.title4,
//       this.title5,
//       this.cardicon,
//       this.image});
// }

// List<SpecialOfferClass> categoryList6 = [
//   SpecialOfferClass(
//     cardicon: Asseturl.icFlighticon,
//     title1: "Flights",
//     title2: "New User Offer",
//     title3: "Sign up & enjoy a discount on your first flight booking with us!",
//     title4: "Use Code:ACEFIRST",
//     title5: "Valid till: 30th Nov, 2024",
//     image: Asseturl.igPoster1,
//   )
// ];
class Category {
  String icon;
  String? title;

  Category({
    required this.icon,
    this.title,
  });
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
List<Category> categoryList3 = [
  Category(icon: Asseturl.igBali, title: "Bali"),
  Category(icon: Asseturl.igIland, title: "Iceland"),
  Category(icon: Asseturl.igJapan, title: "Japan"),
  Category(icon: Asseturl.igParis, title: "Paris"),
];
List<Category> categoryList4 = [
  Category(icon: Asseturl.igBeach, title: "Beach"),
  Category(icon: Asseturl.igMountains, title: "Mountains"),
];
List<Category> categoryList5 = [
  Category(icon: Asseturl.igJapan2, title: "Japan"),
  Category(icon: Asseturl.igMaldives, title: "Maldives"),
];

List<Category> CardList = [
  Category(
    icon: Asseturl.igCard1,
  ),
  Category(
    icon: Asseturl.igCard2,
  ),
  Category(
    icon: Asseturl.igCard3,
  ),
];

List<String> Offers = [
  "Top Offers",
  "Flights",
  "Hotels",
  "Bus",
];

int selectedtabindex = 0;

double _currentRating = 0.0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  heightBox(100.h),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Hello,",
                      style: TextStyle(fontSize: 14.sp),
                    ),
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
              heightBox(22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  categoryList1.length, //list one all component here
                  (index) => Container(
                    width: 103.w,
                    height: 73.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F3F5),
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
                  categoryList2.length, //list one all component here
                  (index) => SizedBox(
                    height: 80.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.w,
                          width: 50.w,
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF2F3F5),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset(categoryList2[index].icon),
                            ),
                          ),
                        ),
                        heightBox(5.h),
                        Text(categoryList2[index].title!)
                      ],
                    ),
                  ),
                ),
              ),
              heightBox(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cutomeFilledButton(
                      img: Asseturl.igThings, T1: "Things to do"),
                  cutomeFilledButton(
                      img: Asseturl.igRestaurants, T1: "Restaurants"),
                ],
              ),
              heightBox(25.h),
              Container(
                width: 345,
                height: 144,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1, -0.03),
                    end: Alignment(100.00, 0.03),
                    colors: [
                      Color(0xFF686F81),
                      Colors.black.withOpacity(0.7799999713897705)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF6C757D)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x002F4858),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 141.h,
                          width: 184.w,
                          child: Image.asset(Asseturl.icTravel),
                        ),
                        widthBox(25),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AI Trip Planner",
                                    style: TextStyle(
                                        fontFamily: Typo.ManoSemiBold,
                                        fontSize: 13.sp,
                                        color: Colors.white),
                                  ),
                                  widthBox(5.h),
                                  SvgPicture.asset(
                                    Asseturl.icAiplaner,
                                    color: Colors.white,
                                    height: 11.82.h,
                                    width: 10.78.h,
                                  )
                                ],
                              ),
                              heightBox(50.h),
                              SizedBox(
                                height: 24.h,
                                width: 110.w,
                                child: FilledButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll(Colors.white),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Start Planning",
                                    style: TextStyle(
                                        fontFamily: Typo.ManoSemiBold,
                                        color: Color(0xff686F81),
                                        fontSize: 8.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              heightBox(27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style: TextStyle(
                        fontFamily: Typo.ManoSemiBold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 14.sp,
                          color: AppColors.PrimaryColor),
                    ),
                  )
                ],
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 165.w / 119.h,
                ), //this keyword use for to adjust container size height and width
                children: List.generate(
                  categoryList3.length,
                  (index) => Container(
                    padding: EdgeInsets.all(5),
                    height: 119.h,
                    width: 165.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(categoryList3[index].icon),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        categoryList3[index].title!,
                        style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightBox(35.h),
              SizedBox(
                height: 144.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    CardList.length,
                    (index) => Container(
                      width: 345.w,
                      height: 144.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(CardList[index].icon),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Journey together",
                    style: TextStyle(
                        fontFamily: Typo.ManoSemiBold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 14.sp,
                          color: AppColors.PrimaryColor),
                    ),
                  )
                ],
              ),
              Container(
                width: 345.w,
                height: 228.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 145,
                      width: 345,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Asseturl.igMountBromo,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .end, //Mount BRomo card all code in this Row....
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mount Bromo",
                                style: TextStyle(
                                    fontFamily: Typo.ManoSemiBold,
                                    fontSize: 14.sp),
                              ),
                              Text(
                                "Volcano in East Java",
                                style: TextStyle(
                                  fontFamily: Typo.ManoSemiBold,
                                  fontSize: 9.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              heightBox(5.h),
                              Row(
                                children: [
                                  VxRating(
                                    selectionColor: Colors.amber,
                                    onRatingUpdate: (value) => 1,
                                    count: 1,
                                  ),
                                  widthBox(5.w),
                                  Text(
                                    "4.9",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        widthBox(80.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start from",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              "Rs.56,150/per",
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                        WidthBox(8.w),
                        Container(
                          height: 24.h,
                          width: 56.h,
                          decoration: BoxDecoration(
                            color: AppColors.PrimaryColor,
                            borderRadius: BorderRadius.circular(
                              16.r,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "3D2N",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontFamily: Typo.ManoSemiBold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 14.sp,
                          color: AppColors.PrimaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 238.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    categoryList4.length,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 25),
                      width: 161.w,
                      height: 238.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(categoryList4[index].icon),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          categoryList4[index].title!,
                          style: TextStyle(
                            fontFamily: Typo.ManoBold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Visited Places",
                    style: TextStyle(
                        fontFamily: Typo.ManoSemiBold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 14.sp,
                          color: AppColors.PrimaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 238.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    categoryList4.length,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 25),
                      width: 161.w,
                      height: 238.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(categoryList5[index].icon),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          categoryList5[index].title!,
                          style: TextStyle(
                            fontFamily: Typo.ManoBold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Asseturl.icOffer,
                    color: AppColors.PrimaryColor,
                  ),
                  widthBox(5.w),
                  Text(
                    "Special Offer",
                    style: TextStyle(
                        fontFamily: Typo.ManoSemiBold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  widthBox(157.w),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: Typo.ManoSemiBold,
                          fontSize: 14.sp,
                          color: AppColors.PrimaryColor),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    Offers.length,
                    (index) => GestureDetector(
                      onTap: () {
                        selectedtabindex = index; // offers tabs list here
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 90.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: index == selectedtabindex
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Center(
                          child: Text(
                            Offers[index],
                            style: TextStyle(
                              color: index == selectedtabindex
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 238.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    2,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 220.h,
                      width: 171.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(Asseturl.igPoster1),
                          Positioned(
                            top: 78.h,
                            right: 11.w,
                            child: Container(
                              height: 18.h,
                              width: 63.w,
                              decoration: BoxDecoration(
                                color: Color(0xffF9F9F9),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 6.5.r,
                                    backgroundColor: AppColors.PrimaryColor,
                                    child: SvgPicture.asset(
                                      Asseturl.igFlighticon,
                                      height: 9.17.h,
                                      width: 9.17.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Flights",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New User Offer",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Sign up & enjoy a discount on\nyour first flight booking with us!",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                  ),
                                ),
                                heightBox(8.h),
                                DottedBorder(
                                  borderPadding: EdgeInsets.all(1.5),
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(5),
                                  color: AppColors.PrimaryColor,
                                  dashPattern: [4, 4],
                                  strokeWidth: 0.3,
                                  child: Container(
                                    height: 25.h,
                                    width: 148.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffEDF5FA),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Use Code:  ACEFIRST",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                heightBox(10.h),
                                Text(
                                  "Valid till: 30th Nov, 2024",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox cutomeFilledButton({img, T1}) {
    return SizedBox(
      width: 165.w,
      height: 42.h,
      child: FilledButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: AppColors.PrimaryColor,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            Colors.transparent,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(img),
            Text(
              T1,
              style: TextStyle(
                  fontFamily: Typo.ManoMedium,
                  fontSize: 14.sp,
                  color: AppColors.PrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
