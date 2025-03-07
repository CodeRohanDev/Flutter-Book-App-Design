import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdesign/Answers.dart';
import 'package:flutterdesign/account.dart';
import 'package:flutterdesign/add_answer_screen.dart';
import 'package:flutterdesign/add_family.dart';
import 'package:flutterdesign/add_question.dart';
import 'package:flutterdesign/add_questions.dart';
import 'package:flutterdesign/book_cover_style.dart';
import 'package:flutterdesign/books_screen.dart';
import 'package:flutterdesign/create_book.dart';
import 'package:flutterdesign/create_challenge.dart';
import 'package:flutterdesign/dashboard.dart';
import 'package:flutterdesign/edit%20question.dart';
import 'package:flutterdesign/home.dart';
import 'package:flutterdesign/members_screne.dart';
import 'package:flutterdesign/purchases.dart';
import 'package:flutterdesign/set_password.dart';
import 'package:flutterdesign/splash.dart';
import 'package:flutterdesign/success_verification.dart';
import 'package:flutterdesign/topics.dart';
import 'package:flutterdesign/upload_assets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 1078), // Match Figma dimensions
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.plusJakartaSansTextTheme().toString(),
          ),
          home: HomeScreen(),
        );
      },
    );
  }
}
