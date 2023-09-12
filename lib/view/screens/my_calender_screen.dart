// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class MyCalenderScreen extends StatelessWidget {
  const MyCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainLightColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainLightColor,
        title: Text(
          'SedrahCare',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontFamily: 'ArbFONTS',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            parent: ScrollPhysics(),
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height / 8,
                  ),
                  Center(
                      child: LottieBuilder.asset(
                          'assets/animation_lm324d9c.json')),
                  Text(
                    'لا يوجد اي مواعيد حاليا',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'ArbFONTS',
                        fontSize: 20,
                        color: mainBlack),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
