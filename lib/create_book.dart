import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateBook extends StatefulWidget {
  const CreateBook({super.key});

  @override
  State<CreateBook> createState() => _CreateBookState();
}

class _CreateBookState extends State<CreateBook> {
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
                      "Create a Book",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 36.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(25),
                minHeight: 15,
                color: Color(0xff43B888),
                backgroundColor: Color(0xffF8F9FA),
                value: 0.254, // Example progress value
              ),
              SizedBox(height: 52.0),
              GestureDetector(
                onTap: () {
                  // Handle upload cover action
                },
                child: DottedBorder(
                  color: Color(0xff43B888),
                  strokeWidth: 1.5,
                  dashPattern: [8, 4], // Dash length and gap
                  borderType: BorderType.RRect,
                  radius: Radius.circular(8),
                  child: Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F7), // Light green background
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/upload.png', // Replace with your actual image path
                            height: 50.0,
                          ),
                          SizedBox(
                            height: 0.0,
                          ), // Spacing between image and text
                          Text(
                            'Upload Cover',
                            style: GoogleFonts.plusJakartaSans(
                              color: Color(0xff43B888),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F7), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
                    ),
                    labelText: 'Book title',
                    labelStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff292A2C).withOpacity(0.69),
                    ),
                    filled: true,
                    fillColor:
                        Colors.transparent, // Prevents double background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Match container's radius
                      borderSide: BorderSide.none, // No border
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F7), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
                    ),
                    labelText: 'Dedication or Name of Person',
                    labelStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff292A2C).withOpacity(0.69),
                    ),
                    filled: true,
                    fillColor:
                        Colors.transparent, // Prevents double background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Match container's radius
                      borderSide: BorderSide.none, // No border
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F7), // Background color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
                    ),
                    labelText: 'Volume Number',
                    labelStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff292A2C).withOpacity(0.69),
                    ),
                    filled: true,
                    fillColor:
                        Colors.transparent, // Prevents double background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // Match container's radius
                      borderSide: BorderSide.none, // No border
                    ),
                  ),
                ),
              ),

              SizedBox(height: 95.0),
              ElevatedButton(
                onPressed: () {
                  // Handle add questions action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff43B888),
                  minimumSize: Size(double.infinity, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ), // Change border radius here
                  ),
                ),
                child: Text(
                  'Add Questions',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp, // Slightly larger text
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
