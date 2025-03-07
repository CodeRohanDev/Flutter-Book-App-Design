// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MembersScrene extends StatefulWidget {
  const MembersScrene({super.key});

  @override
  State<MembersScrene> createState() => _MembersScreneState();
}

class _MembersScreneState extends State<MembersScrene> {
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

            SizedBox(height: 16),
            // Grid of Members
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1,
                ), // Adjust padding to prevent overflow
                child: GridView.builder(
                  padding: EdgeInsets.only(top: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14, // Reduce spacing slightly
                    mainAxisSpacing: 14, // Reduce spacing slightly
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return MemberCard(
                      name: "Tabish bin Tahir",
                      postCount: "10 posts",
                      imageUrl:
                          (index >= 2 && index < 4)
                              ? "assets/profile2.png"
                              : null,
                    );
                  },
                ),
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

class MemberCard extends StatelessWidget {
  final String name;
  final String postCount;
  final String? imageUrl;

  const MemberCard({
    required this.name,
    required this.postCount,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        border: Border.all(color: Color(0xffE9EBF7)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Profile Image or Default Avatar
          CircleAvatar(
            radius: 47,
            // backgroundColor: Color(0xffF8F9FA), // Removes any background color
            child: ClipOval(
              child: Image.asset(
                imageUrl ?? "assets/person.png",
                height: 100,
                fit:
                    BoxFit
                        .cover, // Ensures the image fills properly without distortion
              ),
            ),
          ),

          SizedBox(height: 8),
          // Name
          Text(
            name,
            style: GoogleFonts.plusJakartaSans(
              color: Color(0xff35312D),
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 4),
          // Post Count
          Text(
            postCount,
            style: GoogleFonts.plusJakartaSans(
              color: Color(0xff777779),
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 8),
          // Edit and Remove Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30, // Increased height to prevent clipping
                width: 70, // Adjusted width for better spacing
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/edit.png",
                    width: 12,
                    height: 12,
                  ), // Slightly smaller icon
                  label: Text(
                    "Edit",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff43B989),
                      fontSize: 14.sp, // Reduced font size for proper fit
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFF),
                    elevation: 0,
                    side: BorderSide(color: Color(0xff43B888)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ), // Reduced vertical padding
                  ),
                ),
              ),
              SizedBox(width: 5), // Space between buttons
              SizedBox(
                height: 30, // Increased height to prevent text clipping
                width: 80, // Adjusted width for proper spacing
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Remove",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xffFFFFFF),
                      fontSize: 13.5.sp, // Adjusted font size
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFB056C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ), // Reduced padding
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
