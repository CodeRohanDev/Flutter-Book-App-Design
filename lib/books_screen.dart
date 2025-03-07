import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
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
                      "Books",
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
        padding: EdgeInsets.only(
          top: 24.h,
          left: 20.w,
          right: 20.w,
          bottom: 0.h,
        ),
        child: GridView.builder(
          itemCount: 6, // 6 Book Cards
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            mainAxisSpacing: 28.h,
            crossAxisSpacing: 10.w,
            childAspectRatio: 168 / 261, // Match Figma proportions
          ),
          itemBuilder: (context, index) {
            int row = index ~/ 2; // Get row number
            String imagePath =
                (row % 2 == 0)
                    ? (index % 2 == 0 ? "assets/soul.png" : "assets/hide.png")
                    : (index % 2 == 0 ? "assets/hide.png" : "assets/soul.png");

            return BookCard(imagePath: imagePath);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: const Color(0xFF43B888), // Green color
        child: Icon(Icons.add, size: 35.sp, color: Colors.white),
      ),
    );
  }

  // Helper function to create menu items with even less spacing
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

class BookCard extends StatelessWidget {
  final String imagePath;

  const BookCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168.w,
      height: 261.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8.r),
                  ),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.h), // Adjusted for spacing
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Book Title",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff35312D),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2.h), // Reduced spacing
                    Text(
                      "Tabish bin Tahir",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff777779),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20),
            ],
          ),
          Positioned(
            top: 10.h,
            right: 6.w,
            child: GestureDetector(
              onTap: () {
                // Handle favorite action
              },
              child: Image.asset("assets/heart.png", width: 24.w, height: 24.h),
            ),
          ),
          // SizedBox(height: 10),
        ],
      ),
    );
  }
}
