import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gofood/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash_background.jpg"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(child: Image.asset("assets/images/logo.png")),
      ),
    );
    //   Scaffold(backgroundColor: Colors.grey.shade300,
    //   body: Container(
    //     child: Center(child: Image.asset("assets/images/logo.png")),
    //   ),
    // );
  }
}
