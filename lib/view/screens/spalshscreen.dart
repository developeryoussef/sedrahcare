import 'package:get/get.dart';
import 'package:sedrahcare/main.dart';
import 'package:flutter/material.dart';
import 'package:sedrahcare/controllers/splashscreencontroller.dart';
// ignore_for_file: unused_import, prefer_const_constructors

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: mainLightColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/sedralogo.png'),
              ],
            ),
          ),
        );
      },
    );
  }
}
