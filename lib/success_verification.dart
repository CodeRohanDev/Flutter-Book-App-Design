import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessVerificationScreen extends StatefulWidget {
  const SuccessVerificationScreen({super.key});

  @override
  State<SuccessVerificationScreen> createState() =>
      _SuccessVerificationScreenState();
}

class _SuccessVerificationScreenState extends State<SuccessVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 35,
            top: 0,
            bottom: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/tick.png", height: 70),
              SizedBox(height: 25.h),
              Text(
                "Verification Success, Account has been created Successfully!",
                textAlign: TextAlign.center, // Ensures text is centered
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),

              SizedBox(height: 30.h),
              SizedBox(
                height: 60.h,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff43B888),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
