import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -1), // Focuses gradient at the top
            radius: 1.5,
            colors: [
              Color(0xFF43B888), // Light green at the center
              Color(0xFF2FA575), // Darker green at the edges
            ],
          ),
        ),
        child: Center(child: Image.asset("assets/logo.png", height: 96)),
      ),
    );
  }
}
