import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddQuestionsScreen extends StatefulWidget {
  const AddQuestionsScreen({super.key});

  @override
  State<AddQuestionsScreen> createState() => _AddQuestionsScreenState();
}

class _AddQuestionsScreenState extends State<AddQuestionsScreen> {
  bool isChecked = false;
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
                      "Add Questions",
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
              SizedBox(height: 32.h),
              Text(
                "Book Name",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff35312D),
                ),
              ),
              SizedBox(height: 35.h),
              Text(
                "Choose between the questions below:",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff35312D),
                ),
              ),
              SizedBox(height: 26.h),
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
              SizedBox(height: 15.h),
              SizedBox(
                height: 283.h,
                child: Card(
                  color: Color(0xffFFFFFF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: const Color(0xff43B888), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 0.0,
                      top: 20.0,
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
                              SizedBox(height: 13),
                              Text(
                                "Question 1  |  Topic ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff777779).withOpacity(0.61),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(height: 12),

                              // ✅ Question with Checkbox
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "How would you describe our family's humour as if to a stranger?",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.5.sp,
                                        color: Color(0xff35312D),
                                      ),
                                    ),
                                  ),

                                  // ✅ Move checkbox slightly to the right
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ), // Adjust spacing as needed
                                    child: Transform.scale(
                                      scale:
                                          1.5, // Increase size (1.0 = default, increase as needed)
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    4,
                                                  ), // Rounded corners
                                            ),
                                            fillColor:
                                                MaterialStateProperty.resolveWith<
                                                  Color
                                                >((Set<MaterialState> states) {
                                                  if (states.contains(
                                                    MaterialState.selected,
                                                  )) {
                                                    return Color(
                                                      0xff43B888,
                                                    ); // Fill color when checked
                                                  }
                                                  return Color(
                                                    0xffF6F6F7,
                                                  ); // Default background
                                                }),
                                            side: BorderSide(
                                              color: Color(
                                                0xff43B888,
                                              ), // Border color
                                              width: 1, // Border thickness
                                            ),
                                          ),
                                        ),
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 47.h,
                                    width: 110.17.w,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      label: Text(
                                        "Answer [23]",
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff43B888),
                                        elevation: 0,
                                        side: BorderSide(
                                          color: Color(0xff43B888),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(
                                          bottom: 5.h,
                                          left: 5.w,
                                          right: 5.w,
                                        ),
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
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: FittedBox(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              "assets/share.png",
                                              width: 30.w,
                                              height: 30.h,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Share",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                height: 256.h,
                child: Card(
                  color: Color(0xffF8F9FA),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 0.0,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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

                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ), // Adjust spacing as needed
                                    child: Transform.scale(
                                      scale:
                                          1.5, // Increase size (1.0 = default, increase as needed)
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    4,
                                                  ), // Rounded corners
                                            ),
                                            fillColor:
                                                MaterialStateProperty.resolveWith<
                                                  Color
                                                >((Set<MaterialState> states) {
                                                  if (states.contains(
                                                    MaterialState.selected,
                                                  )) {
                                                    return Color(
                                                      0xff43B888,
                                                    ); // Fill color when checked
                                                  }
                                                  return Color(
                                                    0xffF6F6F7,
                                                  ); // Default background
                                                }),
                                            side: BorderSide(
                                              color: Color(
                                                0xff43B888,
                                              ), // Border color
                                              width: 1, // Border thickness
                                            ),
                                          ),
                                        ),
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // ✅ Question with Checkbox
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and",
                                        style: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Color(0xff777779),
                                        ),
                                      ),
                                    ),

                                    // ✅ Move checkbox slightly to the right
                                  ],
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
              SizedBox(height: 20.h),
              SizedBox(
                height: 282.h,
                child: Card(
                  color: Color(0xffFFFFFF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: const Color(0xff43B888), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 0.0,
                      top: 20.0,
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
                              SizedBox(height: 13),
                              Text(
                                "Question 1  |  Topic ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff777779).withOpacity(0.61),
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(height: 12),

                              // ✅ Question with Checkbox
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "How would you describe our family's humour as if to a stranger?",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp,
                                        color: Color(0xff35312D),
                                      ),
                                    ),
                                  ),

                                  // ✅ Move checkbox slightly to the right
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ), // Adjust spacing as needed
                                    child: Transform.scale(
                                      scale:
                                          1.5, // Increase size (1.0 = default, increase as needed)
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    4,
                                                  ), // Rounded corners
                                            ),
                                            fillColor:
                                                MaterialStateProperty.resolveWith<
                                                  Color
                                                >((Set<MaterialState> states) {
                                                  if (states.contains(
                                                    MaterialState.selected,
                                                  )) {
                                                    return Color(
                                                      0xff43B888,
                                                    ); // Fill color when checked
                                                  }
                                                  return Color(
                                                    0xffF6F6F7,
                                                  ); // Default background
                                                }),
                                            side: BorderSide(
                                              color: Color(
                                                0xff43B888,
                                              ), // Border color
                                              width: 1, // Border thickness
                                            ),
                                          ),
                                        ),
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 47.h,
                                    width: 110.17.w,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      label: Text(
                                        "Answer [0]",
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff43B888),
                                        elevation: 0,
                                        side: BorderSide(
                                          color: Color(0xff43B888),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(
                                          bottom: 5.h,
                                          left: 5.w,
                                          right: 5.w,
                                        ),
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
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: FittedBox(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              "assets/share.png",
                                              width: 30.w,
                                              height: 30.h,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Share",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                height: 285.h,
                child: Card(
                  color: Color(0xffFFFFFF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: const Color(0xff43B888), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 6.0,
                      right: 0.0,
                      top: 20.0,
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
                              SizedBox(height: 13),
                              Text(
                                "Question 1  |  Topic ",
                                style: GoogleFonts.plusJakartaSans(
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xff777779).withOpacity(0.61),
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(height: 12),

                              // ✅ Question with Checkbox
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "How would you describe our family's humour as if to a stranger?",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp,
                                        color: Color(0xff35312D),
                                      ),
                                    ),
                                  ),

                                  // ✅ Move checkbox slightly to the right
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ), // Adjust spacing as needed
                                    child: Transform.scale(
                                      scale:
                                          1.5, // Increase size (1.0 = default, increase as needed)
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    4,
                                                  ), // Rounded corners
                                            ),
                                            fillColor:
                                                MaterialStateProperty.resolveWith<
                                                  Color
                                                >((Set<MaterialState> states) {
                                                  if (states.contains(
                                                    MaterialState.selected,
                                                  )) {
                                                    return Color(
                                                      0xff43B888,
                                                    ); // Fill color when checked
                                                  }
                                                  return Color(
                                                    0xffF6F6F7,
                                                  ); // Default background
                                                }),
                                            side: BorderSide(
                                              color: Color(
                                                0xff43B888,
                                              ), // Border color
                                              width: 1, // Border thickness
                                            ),
                                          ),
                                        ),
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 47.h,
                                    width: 110.17.w,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      label: Text(
                                        "Answer [23]",
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff43B888),
                                        elevation: 0,
                                        side: BorderSide(
                                          color: Color(0xff43B888),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(
                                          bottom: 5.h,
                                          left: 5.w,
                                          right: 5.w,
                                        ),
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
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: FittedBox(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              "assets/share.png",
                                              width: 30.w,
                                              height: 30.h,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Share",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35.h),
              SizedBox(
                height: 65.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff43B888),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Choose Style",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                height: 65.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0xff43B888)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save draft",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xff43B888),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
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
}
