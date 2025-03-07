import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersScreen extends StatefulWidget {
  const AnswersScreen({super.key});

  @override
  State<AnswersScreen> createState() => _AnswersScreenState();
}

class _AnswersScreenState extends State<AnswersScreen> {
  PopupMenuItem<String> _buildMenuItem(String title) {
    return PopupMenuItem<String>(
      value: title,
      child: Container(
        width: 190.w, // Adjust width if needed
        padding: EdgeInsets.symmetric(
          vertical: 0.h,
          horizontal: 20.w,
        ), // Reduced vertical padding
        child: Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
                    IconButton(
                      icon: Image.asset(
                        "assets/back.png",
                        width: 45.w, // Larger size
                        height: 45.h,
                      ),
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                      padding: EdgeInsets.zero, // Removes default padding
                      constraints: BoxConstraints(), // Prevents extra margin
                    ),
                    SizedBox(width: 8.w), // Space between icon and text
                    Text(
                      "Answers",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 23.sp, // Slightly larger text
                        fontWeight: FontWeight.w600,
                        color: Color(0xff35312D),
                      ),
                    ),
                  ],
                ),

                // 📜 Menu Button with Dropdown
                PopupMenuButton<String>(
                  color: const Color(0xffFFFFFF),
                  icon: Image.asset(
                    "assets/menu.png",
                    width: 55.w, // Larger size
                    height: 55.h,
                  ),
                  onSelected: (value) {
                    print("Selected: $value"); // Handle menu selection
                  },
                  itemBuilder:
                      (BuildContext context) => [
                        _buildMenuItem("Dashboard"),
                        _buildMenuItem("Account"),
                        _buildMenuItem("Family"),
                        _buildMenuItem("Assets"),
                        _buildMenuItem("Questions"),
                        _buildMenuItem("Answers"),
                        _buildMenuItem("Books"),
                        _buildMenuItem("Log out"),
                      ],
                  constraints: BoxConstraints(minWidth: 200.w), // Adjust width
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Column(
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF9F8FA),
                  filled: true,
                  hintText: "Search here",
                  hintStyle: GoogleFonts.plusJakartaSans(
                    color: Color(0xff292A2C).withOpacity(0.61),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 13,
                      top: 13,
                      bottom: 13,
                    ), // Adjust padding to control spacing
                    child: Image.asset(
                      "assets/search.png",
                      width: 20, // Force width
                      height: 20, // Force height
                      fit: BoxFit.contain, // Ensures the image scales properly
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/filter.png",
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 23.h), // Adjusted height
              Container(
                padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff43B888), width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.yellow,
                          child: Image.asset("assets/profile.png", width: 50.w),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Tabish Bin Tahir",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xff0E0D1E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "Question 1  |  Topic ",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontSize: 13.sp,
                        color: Color(0xff777779).withOpacity(0.61),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "How would you describe our family’s humour as if to a stranger?",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: Color(0xff35312D),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      children: [
                        SizedBox(
                          height: 43.h, // Increased height to prevent clipping
                          width: 105.17.w, // Adjusted width for better spacing
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Answer [23]",
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    14.sp, // Reduced font size for proper fit
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff43B888),
                              elevation: 0,
                              side: BorderSide(color: Color(0xff43B888)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.only(
                                // top: 10.h,
                                bottom: 5.h,
                                left: 5.w, // Reduced horizontal padding
                                right: 5.w, // Reduced horizontal padding
                              ), // Reduced vertical padding
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        SizedBox(
                          width: 100.17.w,
                          height: 45.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF6F6F7),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {},
                            child: FittedBox(
                              // Ensures content fits within the button
                              child: Row(
                                mainAxisSize:
                                    MainAxisSize
                                        .min, // Prevents Row from expanding beyond content
                                children: [
                                  Image.asset(
                                    "assets/share.png",
                                    width: 30.w,
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ), // Add spacing between icon and text
                                  Text(
                                    "Share",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25.sp,
                                      color: Color(0xff43B989),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 20.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Keeps rounded corners
                        color: Color(0xffF8F9FA), // Optional background color
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.yellow,
                                child: Image.asset(
                                  "assets/profile.png",
                                  width: 50.w,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Tabish Bin Tahir",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: Color(0xff0E0D1E),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and",
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xff777779),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 20.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Keeps rounded corners
                        color: Color(0xffF8F9FA), // Optional background color
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.yellow,
                                child: Image.asset(
                                  "assets/profile.png",
                                  width: 50.w,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Tabish Bin Tahir",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: Color(0xff0E0D1E),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and",
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xff777779),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff43B888),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add Answer",
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
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffE5E5E5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.yellow,
                          child: Image.asset("assets/profile.png", width: 50.w),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Tabish Bin Tahir",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xff0E0D1E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Question 1  |  Topic ",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontSize: 13.sp,
                        color: Color(0xff777779).withOpacity(0.61),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "How would you describe our family’s humour as if to a stranger?",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: Color(0xff35312D),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SizedBox(
                          height: 47.h, // Increased height to prevent clipping
                          width: 110.17.w, // Adjusted width for better spacing
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Answer [23]",
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    14.sp, // Reduced font size for proper fit
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff43B888),
                              elevation: 0,
                              side: BorderSide(color: Color(0xff43B888)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.only(
                                // top: 10.h,
                                bottom: 5.h,
                                left: 5.w, // Reduced horizontal padding
                                right: 5.w, // Reduced horizontal padding
                              ), // Reduced vertical padding
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        SizedBox(
                          width: 100.17.w,
                          height: 47.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF6F6F7),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {},
                            child: FittedBox(
                              // Ensures content fits within the button
                              child: Row(
                                mainAxisSize:
                                    MainAxisSize
                                        .min, // Prevents Row from expanding beyond content
                                children: [
                                  Image.asset(
                                    "assets/share.png",
                                    width: 30.w,
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ), // Add spacing between icon and text
                                  Text(
                                    "Share",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25.sp,
                                      color: Color(0xff43B989),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
