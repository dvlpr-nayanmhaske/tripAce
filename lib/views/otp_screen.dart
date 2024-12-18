import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_timer/otp_timer.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:pinput/pinput.dart';
import 'package:travel/const/colorpallate.dart';
import 'package:travel/const/typography.dart';
import 'package:travel/const/utility.dart';
import 'package:travel/main.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox(60.h),
            Container(
              height: 41.h,
              width: 41.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.r)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            heightBox(18.h),
            Text(
              "OTP Verification",
              style: TextStyle(fontFamily: Typo.ManoExtraBold, fontSize: 28.sp),
            ),
            heightBox(18.h),
            Text(
              "Enter the verification code we just sent on your email address.",
              style: TextStyle(
                fontFamily: Typo.ManoRegular,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            heightBox(18.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Pinput(
                length: 4, // Number of OTP fields
                defaultPinTheme: PinTheme(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  height: 60.h, // Fixed height
                  width: 60.w, // Fixed width
                  margin: const EdgeInsets.symmetric(
                      horizontal: 5), // Uniform spacing
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38), // Default border
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),

                // Focused border styling
                focusedPinTheme: PinTheme(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  height: 60.h,
                  width: 60.w,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 5), // Prevents shifting
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),

                // Submitted border styling
                submittedPinTheme: PinTheme(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  height: 60.h,
                  width: 60.w,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 5), // Prevents shifting
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),

                // Cursor customization
                cursor: Container(
                  height: 2,
                  width: 30,
                  color: Colors.green,
                ),
              ),
            ),
            Row(
              children: [
                widthBox(210.w),
                OtpTimerButton(
                  height: 50,
                  onPressed: () {},
                  text: Text(
                    'Resend OTP',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: Typo.ManoRegular,
                        color: Colors.black26),
                  ),
                  buttonType: ButtonType.text_button,
                  backgroundColor: AppColors.PrimaryColor,
                  duration: 30,
                ),
              ],
            ),
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
                  GoRouter.of(context).goNamed(Routes.HomeScreen.name);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontFamily: Typo.ManoMedium,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
