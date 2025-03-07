import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookCoverStyle extends StatefulWidget {
  const BookCoverStyle({super.key});

  @override
  State<BookCoverStyle> createState() => _BookCoverStyleState();
}

class _BookCoverStyleState extends State<BookCoverStyle> {
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
                      "Book Cover Style",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 33.0,
              ),
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
                  SizedBox(height: 31.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Book Title Here",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff32312D),
                        ),
                      ),
                      Text(
                        "125 pages",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff43B888),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "US Trade 6x9 in/ 152 x 229 mm",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777779),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Divider(),
                  SizedBox(height: 10.h),
                  Text(
                    "Choose style",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff35312D),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "i.e. Modern, Graceful, Timeless",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777779),
                    ),
                  ),
                  SizedBox(height: 28.h),
                ],
              ),
            ),

            // 📚 Horizontal Scrollable Book Covers
            // 📚 Horizontal Scrollable Book Covers
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 350.h, // Adjusted to fit image + text
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildBookCoverCard("assets/book1.png", "Modern"),
                    SizedBox(width: 10.w),
                    _buildBookCoverCard("assets/book2.png", "Graceful"),
                    SizedBox(width: 10.w),
                    _buildBookCoverCard("assets/book3.png", "Timeless"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.h),
                  Text(
                    "Choose Colour",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff35312D),
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Text(
                    "Cover",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777779),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            //add a horizontal scrollable circles for color make it 8
            // 🎨 Color Selection (Horizontally Scrollable Circles)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 60.h, // Adjusted for proper spacing
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8, // 8 colors
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 10.w,
                      ), // Spacing between circles
                      child: _buildColorCircle(
                        [
                          Color(0xff1C1C1E),
                          Color(0xff573743),
                          Color(0xff9C6278),
                          Color(0xff42465A),
                          Color(0xff292A2C),
                          Color(0xff8889A3),
                          Color(0xff485B50),
                          Color(0xff8EA297),
                        ][index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 55.h),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                height: 65.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff43B888),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Preview Book",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildBookCoverCard(String imagePath, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Prevents overflow
      crossAxisAlignment: CrossAxisAlignment.center, // Center content
      children: [
        Container(
          width: 160.w,
          height: 290.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 159.w,
              height: 270.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 14.h),
        SizedBox(
          width: 159.w, // Ensures text stays within the container width
          child: Text(
            title,
            textAlign: TextAlign.center, // Center the text
            style: GoogleFonts.plusJakartaSans(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff777779),
            ),
            overflow: TextOverflow.ellipsis, // Prevents text overflow
            maxLines: 1, // Ensures the text stays in a single line
          ),
        ),
      ],
    );
  }

  Widget _buildColorCircle(Color color) {
    return Container(
      width: 43.w, // Circle width
      height: 50.h, // Circle height
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
