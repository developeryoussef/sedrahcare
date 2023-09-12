// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/main.dart';

import '../data/static/onboardingdata.dart';
import '../view/screens/loginscreen.dart';

abstract class AdverseController extends GetxController {
  next();
  onPageChanged(int index);
}

class AdverseControllerImp extends AdverseController {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      Get.to(LoginScreen());
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
