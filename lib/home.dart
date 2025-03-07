import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterdesign/account.dart';
import 'package:flutterdesign/add_answer_screen.dart';
import 'package:flutterdesign/add_family.dart';
import 'package:flutterdesign/add_question.dart';
import 'package:flutterdesign/add_questions.dart';
import 'package:flutterdesign/answers.dart';
import 'package:flutterdesign/book_cover_style.dart';
import 'package:flutterdesign/books_screen.dart';
import 'package:flutterdesign/create_book.dart';
import 'package:flutterdesign/create_challenge.dart';
import 'package:flutterdesign/edit%20question.dart';
import 'package:flutterdesign/members_screne.dart';
import 'package:flutterdesign/purchases.dart';
import 'package:flutterdesign/set_password.dart';
import 'package:flutterdesign/splash.dart';
import 'package:flutterdesign/success_verification.dart';
import 'package:flutterdesign/topics.dart';
import 'package:flutterdesign/upload_assets.dart';
import 'package:flutterdesign/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredPages = [];

  final List<Map<String, dynamic>> pages = [
    {'title': 'Account Screen', 'screen': const AccountScreen()},
    {'title': 'Add Answer Screen', 'screen': const AddAnswerScreen()},
    {'title': 'Add Family Screen', 'screen': const AddFamilyScreen()},
    {'title': 'Add Question Screen', 'screen': AddQuestionScreen()},
    {'title': 'Add Questions Screen', 'screen': const AddQuestionsScreen()},
    {'title': 'Answers Screen', 'screen': const AnswersScreen()},
    {'title': 'Book Cover Style Screen', 'screen': const BookCoverStyle()},
    {'title': 'Books Screen', 'screen': const BooksScreen()},
    {'title': 'Create Book Screen', 'screen': const CreateBook()},
    {
      'title': 'Create Challenge Screen',
      'screen': const CreateChallengeScreen(),
    },
    {'title': 'Dashboard Screen', 'screen': const DashboardScreen()},
    {'title': 'Edit Question Screen', 'screen': const EditQuestion()},
    {'title': 'Members Screen', 'screen': const MembersScrene()},
    {'title': 'Purchases Screen', 'screen': const PurchasesScreen()},
    {'title': 'Set Password Screen', 'screen': const SetPasswordScreen()},
    {'title': 'Splash Screen', 'screen': const SplashScreen()},
    {
      'title': 'Success Verification Screen',
      'screen': const SuccessVerificationScreen(),
    },
    {'title': 'Topics Screen', 'screen': const TopicsScreen()},
    {'title': 'Upload Assets Screen', 'screen': const UploadAssets()},
  ];

  @override
  void initState() {
    super.initState();
    filteredPages = pages;
  }

  void filterSearchResults(String query) {
    setState(() {
      filteredPages =
          pages
              .where(
                (page) =>
                    page['title'].toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          "Home",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage(
                "assets/profile.png",
              ), // Replace with a profile image
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          children: [
            // 🔍 Search Bar with Rounded Corners
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: TextField(
                controller: searchController,
                onChanged: filterSearchResults,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                  hintText: "Search pages...",
                  hintStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.grey.shade500,
                    fontSize: 16.sp,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.blueAccent),
                  suffixIcon:
                      searchController.text.isNotEmpty
                          ? IconButton(
                            icon: Icon(Icons.clear, color: Colors.redAccent),
                            onPressed: () {
                              setState(() {
                                searchController.clear();
                                filteredPages = pages;
                              });
                            },
                          )
                          : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // 🟢 List of Pages (Glassmorphism Style)
            Expanded(
              child:
                  filteredPages.isEmpty
                      ? Center(
                        child: Text(
                          "No results found",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      )
                      : ListView.builder(
                        itemCount: filteredPages.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => Scaffold(
                                        body:
                                            filteredPages[index]['screen'], // Ensure no duplicate AppBar
                                      ),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 8.h),
                              padding: EdgeInsets.all(16.w),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(2, 5),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // 📌 Page Title
                                  Text(
                                    filteredPages[index]['title'],
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  // ➡ Arrow Icon
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.blueAccent,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
