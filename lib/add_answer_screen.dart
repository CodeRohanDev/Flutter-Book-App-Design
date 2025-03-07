// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAnswerScreen extends StatefulWidget {
  const AddAnswerScreen({super.key});

  @override
  State<AddAnswerScreen> createState() => _AddAnswerScreenState();
}

class _AddAnswerScreenState extends State<AddAnswerScreen> {
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
                      "Add Answer",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
        child: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Question Card
              SizedBox(
                height: 238.h,
                child: Card(
                  color: Color(0xffFFFFFF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: const Color(0xff43B888), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 20.0,
                      top: 15.0,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(height: 8),
                              Text(
                                "Question 1  |  Topic ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff777779).withOpacity(0.61),
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "How would you describe our family's humour as if to a stranger?",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color(0xff35312D),
                                ),
                              ),
                              SizedBox(height: 15),
                              SizedBox(
                                width: 105.17.w,
                                height: 41.h,
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
                                          width: 20.w,
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ), // Add spacing between icon and text
                                        Text(
                                          "Share",
                                          style: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w400,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Answer Input Field
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Type here the answer",
                  hintStyle: GoogleFonts.plusJakartaSans(
                    color: Color(0xff292A2C).withOpacity(0.61),
                    fontSize: 15.sp,
                  ),
                  fillColor: Color(0xffF6F6F7),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ), // Adjust padding
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(
                      right: 18.0,
                    ), // Keep minimal padding
                    child: Row(
                      mainAxisSize:
                          MainAxisSize.min, // Keep Row as tight as possible
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Align icons vertically
                      children: [
                        Image.asset(
                          "assets/camera.png",
                          width: 40.w,
                        ), // First icon
                        SizedBox(
                          width: 0,
                        ), // Explicitly set no space (optional, as Row doesn't add space by default)
                        Image.asset(
                          "assets/mic.png",
                          width: 40.w,
                        ), // Second icon, no gap
                      ],
                    ),
                  ),
                ),
                maxLines: 1, // Ensure everything stays in one line
              ),
              SizedBox(height: 15),
              // Upload Option
              SizedBox(
                height: 63.h,
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset("assets/newupload.png", height: 22.h),
                  label: Text(
                    "Upload Transcript [audio/video]",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff43B989),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xff43B888), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 218.h),
              // Add Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff43B888),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
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
}
