// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/main.dart';

import '../data/static/onboardingdata.dart';
import '../view/screens/loginscreen.dart';

class MedicalTestsController extends GetxController {
  int? selectedTest;
  selectTest(index) {
    selectedTest = index;
    update();
  }
}
