import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/utility.dart';
import 'package:travel/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late GifController _gifController;

  changeScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).goNamed(Routes.onboarding.name);

      // GoRouter.of(context).goNamed(Routes.home.name);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gifController = GifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gifController.repeat(
        min: 0,
        max: 1,
        period: const Duration(seconds: 2),
      );
    });
    changeScreen();
  }

  @override
  void dispose() {
    _gifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              heightBox(192.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(Asseturl.igLogo),
                  Positioned(
                    left: 46.w,
                    bottom: 37.h,
                    child: Image.asset(Asseturl.icLogo2),
                  ),
                ],
              ),
              heightBox(45.h),
              Gif(
                width: 345.w,
                height: 337.h,
                fit: BoxFit.cover,
                controller: _gifController,
                image: AssetImage(Asseturl.icMap),
              ),
            ],
          )),
    );
  }
}
