import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({super.key});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  final List<String> topics = List.generate(9, (index) => "Topic ${index + 1}");

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
                      "Members",
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
            // 🔍 Search Bar
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
                  padding: EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/search.png",
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
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
            SizedBox(height: 20.h),

            // 🟢 Grid View (3x3)
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 items per row
                  crossAxisSpacing: 11.5.w,
                  mainAxisSpacing: 0.h,
                  childAspectRatio: 0.55, // Controls height vs width
                ),
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 🟢 Circular Avatar
                        CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "assets/topic.png",
                          ), // Update path
                        ),
                        SizedBox(height: 0.h),

                        // 📌 Topic & Questions Text
                        Text(
                          "Topic",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292A2C),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 0.h),
                        Text(
                          "10 Questions",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff777779),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Color(0xff43B888),
        child: Icon(Icons.add, color: Color(0xffFFFFFF), size: 36.sp),
      ),
    );
  }
}
