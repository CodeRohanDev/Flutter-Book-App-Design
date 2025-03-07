import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadAssets extends StatefulWidget {
  const UploadAssets({super.key});

  @override
  State<UploadAssets> createState() => _UploadAssetsState();
}

class _UploadAssetsState extends State<UploadAssets> {
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
    String? _selectedTopic;
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
            padding: EdgeInsets.symmetric(horizontal: 10.w), // More spacing
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
                      "Upload Assets",
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
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    height: 228.0,
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
                            height: 48.0,
                          ),
                          SizedBox(height: 0), // Spacing between image and text
                          Text(
                            'Upload',
                            style: GoogleFonts.plusJakartaSans(
                              color: Color(0xff43B888),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '(Files/Images)',
                            style: GoogleFonts.plusJakartaSans(
                              color: Color(0xff777779),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  labelText: 'Title',
                  // Add Google font style
                  labelStyle: GoogleFonts.plusJakartaSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xff292A2C,
                    ).withOpacity(0.69), // 69% black opacity
                  ),
                  filled: true, // Enables background color
                  fillColor: Color(0xFFF6F6F7),
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
              SizedBox(height: 14.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  // add background color
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  labelText: "Tag people",
                  labelStyle: GoogleFonts.plusJakartaSans(
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
                ),
                icon: Image.asset("assets/down.png", height: 10.h),
                value: _selectedTopic,
                items:
                    ["Topic 1", "Topic 2", "Topic 3"]
                        .map(
                          (topic) => DropdownMenuItem(
                            value: topic,
                            child: Text(topic),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTopic = value;
                  });
                },
              ),
              SizedBox(height: 14.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  // add background color
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  labelText: "Tyoe of Asset",
                  labelStyle: GoogleFonts.plusJakartaSans(
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
                ),
                icon: Image.asset("assets/down.png", height: 10.h),
                value: _selectedTopic,
                items:
                    ["Topic 1", "Topic 2", "Topic 3"]
                        .map(
                          (topic) => DropdownMenuItem(
                            value: topic,
                            child: Text(topic),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTopic = value;
                  });
                },
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 90, // Set a fixed height (adjust as needed)
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    filled: true,
                    fillColor: Color(0xffF6F6F7),
                    hintText: "Description",
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
                  ),
                  minLines: 4, // Minimum height of 4 lines
                  maxLines: 6, // Expandable up to 6 lines
                ),
              ),

              SizedBox(height: 14.0),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "Type here or hold mic to speak",
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
                    horizontal: 20,
                    vertical: 15,
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
              SizedBox(height: 16.0),
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
                  'Add',
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
