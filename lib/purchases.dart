// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasesScreen extends StatefulWidget {
  const PurchasesScreen({super.key});

  @override
  State<PurchasesScreen> createState() => _PurchasesScreenState();
}

class _PurchasesScreenState extends State<PurchasesScreen> {
  int _selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        titleSpacing: 0,
        toolbarHeight: 70.h, // Increased height for better proportions
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w), // More spacing
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 🔙 Back Button and Title
                Row(
                  children: [
                    SizedBox(width: 8.w), // Space between icon and text
                    Text(
                      "Purchases",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 23.sp, // Slightly larger text
                        fontWeight: FontWeight.w600,
                        color: Color(0xff35312D),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // 📚 Book List
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      Container(
                        decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                        child: Row(
                          children: [
                            // 📚 Book Cover
                            Container(
                              width: 95.w,
                              height: 156.h,
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/hide.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            // 📚 Book Details
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(15.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Book Title",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff35312D),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "Tabish bin Tahir",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff777779),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "\$75",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff35312D),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/again.png",
                                          height: 15.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Buy Again",
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff43B888),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // 📌 Fix: Use Expanded to Fill Available Space
                            SizedBox(
                              height:
                                  156.h, // Ensure the column is as tall as the book cover
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    // 🖊 Edit Button (At the Top)
                                    SizedBox(
                                      width: 95.h,
                                      height: 43.h,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                          side: BorderSide(
                                            // ✅ Added border color
                                            color: Color(0xff43B888),
                                            width:
                                                1, // Adjust thickness as needed
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.h,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/edit.png",
                                              height: 15.h,
                                            ),
                                            SizedBox(width: 7.w),
                                            Text(
                                              'Edit',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff43B989),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Spacer(), // 🔥 Pushes download icon to the bottom
                                    // ⬇️ Download Icon (At the Bottom)
                                    Image.asset(
                                      "assets/download.png",
                                      height: 25.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF), // ✅ Set background color
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ), // Optional border
          ),
        ),
        height: 85,
        child: BottomNavigationBar(
          backgroundColor: Color(
            0xffFFFFFF,
          ), // ✅ Explicitly set background color
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff35312D),
          unselectedItemColor: Color(0xff777779),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          selectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/homenav.png", height: 24),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/questionnav.png", height: 24),
              label: "Questions",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/communitynav.png", height: 24),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 3
                    ? "assets/purchasefilled.png"
                    : "assets/purchasenav.png", // Ensure correct active/inactive icon
                height: 24,
              ),
              label: "Purchases",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 4
                    ? "assets/menav.png"
                    : "assets/meunfilled.png", // Ensure correct active/inactive icon
                height: 24,
              ),
              label: "Me",
            ),
          ],
        ),
      ),
    );
  }
}
