import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gofood/on_boarding_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => onboardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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