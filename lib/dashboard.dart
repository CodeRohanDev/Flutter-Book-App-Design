import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                    SizedBox(width: 8.w), // Space between icon and text
                    Text(
                      "Dashboard",
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
        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 20.h),

            // 📌 Two Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDashboardCard("Add Family \nMembers"),
                _buildDashboardCard(
                  "Upload and Tag \nAssets",
                  subText: "(Files/Images)",
                ),
              ],
            ),

            SizedBox(height: 70.h),

            // 📌 Quote Section
            Text(
              "William James",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff777779),
              ),
            ),
            SizedBox(height: 18.h),
            Text(
              "“The greatest purpose of life is to live it\nfor something that lasts longer than you”",
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff777779),
              ),
            ),

            SizedBox(height: 40.h),

            // 📌 Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavButton(Icons.chevron_left),
                SizedBox(width: 15.w),
                _buildNavButton(Icons.chevron_right),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Widget: Dashboard Card
  Widget _buildDashboardCard(String title, {String? subText}) {
    return Container(
      width: 167.w,
      height: 195,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: BoxDecoration(
        color: Color(0xffF8F9FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          CircleAvatar(
            backgroundColor: Color(0xFF43B888),
            radius: 18,
            child: Icon(Icons.add, color: Colors.white, size: 20),
          ),
          SizedBox(height: 35.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          if (subText != null) ...[
            SizedBox(height: 5.h),
            Text(
              subText,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff777779),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // 🔹 Widget: Navigation Button
  Widget _buildNavButton(IconData icon) {
    return CircleAvatar(
      backgroundColor: Color(0xFF43B888),
      radius: 18,
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
