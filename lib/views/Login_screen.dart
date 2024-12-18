import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/const/AssetUrl.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';
import 'package:travel/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            heightBox(86.h),
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
            heightBox(43.h),
            Text(
              "Welcome back! Login to Your Account..",
              style: TextStyle(fontFamily: Typo.ManoRegular, fontSize: 28.sp),
            ),
            heightBox(25.h),
            TextField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 24.w, // Set desired width
                  height: 24.h, // Set desired height
                  child: SvgPicture.asset(
                    Asseturl.igindia,
                    fit: BoxFit.scaleDown, // Scales the icon properly
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5.w,
                  ),
                ),
                hintText: '+ 91 Enter your Mobile Number',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            heightBox(25.h),
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.PrimaryColor),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), //
                    ),
                  ),
                ),
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.OtpScreen.name);
                },
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                    fontFamily: Typo.ManoMedium,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            heightBox(25.h),
            Row(
              children: [
                const Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Or Login with",
                    style: TextStyle(
                      fontFamily: Typo.ManoRegular,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
            Row(
              children: [
                CutomeIconButton(
                  img: (Asseturl.igfb),
                ),
                CutomeIconButton(
                  img: (Asseturl.iggoogle),
                ),
                CutomeIconButton(
                  img: (Asseturl.igapple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconButton CutomeIconButton({img}) {
    return IconButton(
      onPressed: () {},
      icon: Container(
          padding: const EdgeInsets.all(10),
          height: 56.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: SvgPicture.asset(img)),
    );
  }
}
