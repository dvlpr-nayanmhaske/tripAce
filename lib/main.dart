import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/Login_screen.dart';
import 'package:travel/views/home_screen.dart';
import 'package:travel/views/onboarding.dart';
import 'package:travel/views/onboarding4.dart';
import 'package:travel/views/otp_screen.dart';
import 'package:travel/views/splash_screen.dart';

void main() {
  runApp(Travel());
}

enum Routes {
  SplashScreen,
  onboarding,
  Onboarding4,
  LoginScreen,
  OtpScreen,
  HomeScreen
}

class Travel extends StatelessWidget {
  Travel({super.key});
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: Routes.SplashScreen.name,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/onboarding",
        name: Routes.onboarding.name,
        builder: (context, state) => Onboarding(),
      ),
      GoRoute(
        path: "/onboarding4",
        name: Routes.Onboarding4.name,
        builder: (context, state) => Onboarding4(),
      ),
      GoRoute(
        path: "/LoginScreen",
        name: Routes.LoginScreen.name,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: "/otpScreen",
        name: Routes.OtpScreen.name,
        builder: (context, state) => OtpScreen(),
      ),
      GoRoute(
        path: "/homescreen",
        name: Routes.HomeScreen.name,
        builder: (context, state) => HomeScreen(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
