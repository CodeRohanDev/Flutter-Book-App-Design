import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool _obscureText = true;
  bool isChecked = false;
  int _selectedIndex = 4;

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
                      "Account",
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture with Camera Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80.r, // Increased size
                        backgroundImage: AssetImage("assets/profileicon.png"),
                      ),
                      Positioned(
                        bottom: -12, // Adjust position
                        right: -12, // Adjust position
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/camera2.png",
                            height: 50.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 45), // Increased spacing
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "Tabish",
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
                    horizontal: 12,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "Bin Tahir",
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
                    horizontal: 12,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "tabish@m2m.com",
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
                    horizontal: 12,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "+12345678901",
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
                    horizontal: 12,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: false, // Disable default dots
                inputFormatters: [
                  StarPasswordFormatter(),
                ], // Custom formatter for *
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF6F6F7),
                  hintText: "************",
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
                    horizontal: 12,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xff6E6D79),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText; // Toggle visibility
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Join Date: ",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff292A2C),
                    ),
                  ),
                  Text(
                    "February 23, 2024",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777779),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Active Subscription",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff777779),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$10",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff35312D),
                          ),
                        ),
                        Text(
                          '/month',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff35312D),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff43B888), // Red color
                            ),
                            onPressed: () {},
                            child: Text(
                              "Deactivate",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              side: BorderSide(
                                color: Color(0xff43B888),
                                width: 1,
                              ),
                              backgroundColor: Color(0xffFFFFFF),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Share",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff43B989),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align items at the top
                children: [
                  Transform.translate(
                    offset: Offset(0, -4.h), // Move checkbox UP
                    child: Transform.scale(
                      scale: 1.2, // Increase checkbox size
                      child: Checkbox(
                        fillColor: MaterialStateProperty.all(
                          Color(0xffF2F2F4),
                        ), // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ), // Rounded corners
                        ),
                        side: BorderSide.none, // Remove border
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap, // Reduce padding
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w), // Space between checkbox and text
                  Expanded(
                    child: Text(
                      "Opt into receiving weekly legacy questions to ask your family.",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777779),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff43B888), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Save Details',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 85, // Adjust the height as needed
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF), // Background color of navbar
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1, // Optional border
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffFFFFFF), // Ensure white background
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff35312D), // Active tab color
          unselectedItemColor: Color.fromARGB(
            255,
            92,
            92,
            94,
          ), // Inactive tab color
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(color: Color(0xff43B888)),
          unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset("assets/homenav.png", height: 24),
                  SizedBox(height: 4),
                ],
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset("assets/questionnav.png", height: 24),
                  SizedBox(height: 4),
                ],
              ),
              label: "Questions",
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset("assets/communitynav.png", height: 24),
                  SizedBox(height: 4),
                ],
              ),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset("assets/purchasenav.png", height: 24),
                  SizedBox(height: 4),
                ],
              ),
              label: "Purchases",
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset("assets/menav.png", height: 24),
                  SizedBox(height: 4),
                ],
              ),
              label: "Me",
            ),
          ],
        ),
      ),
    );
  }
}

class StarPasswordFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: '*' * newValue.text.length, // Replace each character with *
      selection: newValue.selection,
    );
  }
}
