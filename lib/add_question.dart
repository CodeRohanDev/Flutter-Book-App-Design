import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddQuestionScreen extends StatefulWidget {
  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  String? _selectedTopic; // Variable to store the selected topic
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
                      "Add Question",
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
                    width: 57.w, // Larger size
                    height: 57.h,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Topic Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                // add background color
                filled: true,
                fillColor: Color(0xffF6F6F7),
                labelText: "Topic",
                labelStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292A2C).withOpacity(0.61),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 19,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              icon: Image.asset("assets/down.png", height: 10.h),
              value: _selectedTopic,
              items:
                  ["Topic 1", "Topic 2", "Topic 3"]
                      .map(
                        (topic) =>
                            DropdownMenuItem(value: topic, child: Text(topic)),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedTopic = value;
                });
              },
            ),
            SizedBox(height: 8),
            // Question Text Field
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF6F6F7),
                hintText: "Type Here",
                hintStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292A2C).withOpacity(0.61),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 19,
                ),
                suffixIcon: IconButton(
                  icon: Image.asset("assets/newmic.png", height: 50.h),
                  onPressed: () {
                    // Add microphone functionality here
                  },
                ),
              ),
              maxLines: 1, // Allow multiple lines for the question
            ),
            SizedBox(height: 9),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF6F6F7),
                hintText: "Question Help",
                hintStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff292A2C).withOpacity(0.61),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 19,
                ),
              ),
              maxLines: 3, // Allow multiple lines for the question
            ),
            // Question Help Text (Optional)
            SizedBox(height: 12),
            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add question logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff43B888), // Button color
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Add",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
