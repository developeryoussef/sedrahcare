import 'dart:async';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import 'package:sedrahcare/view/screens/onboardingscreen.dart';

import '../main.dart';
import 'package:get/get.dart';

import '../view/screens/doctorviewcontroller.dart';
import '../view/screens/viewcontroller.dart';
// ignore_for_file: avoid_print

// ignore_for_file: unused_import, unnecessary_overrides, prefer_const_constructors

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 1), () {
      print('finished');
      sharedPreferences!.getBool('isOnboarding') != true
          ? Get.off(OnBoarding(), transition: Transition.circularReveal)
          : sharedPreferences!.getBool('isLogin') == true
              ? Get.offAll(ViewController())
              : Get.off(LoginScreen(), transition: Transition.cupertinoDialog);
    });
    super.onInit();
  }
}
