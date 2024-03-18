import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medimind/pages/DashBoard.dart';
import 'package:medimind/pages/patientList.dart';

class AniSplash extends StatelessWidget {
  const AniSplash({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.8;

    return AnimatedSplashScreen(
      splash: Center(
        child: LottieBuilder.asset(
          'assets/animation/splash1.json',
          width: size,
          height: size, // Make the height equal to the width for a square shape
        ),
      ),
      nextScreen: PatientListScreen(),
      backgroundColor: Colors.white,
      splashIconSize: 200,
    );
  }
}
