// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class NonLoginScreenSettings extends StatelessWidget {
  const NonLoginScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          'SedrahCare',
          style: TextStyle(
              fontFamily: 'ArbFONTS',
              color: Colors.black87,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            parent: ScrollPhysics(),
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'يمكنك الآن تسجيل الدخول و استمتع بأفضل خدمات الرعاية الصحية',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        color: mainBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 10, top: 20, right: 20, left: 20),
                  width: Get.width,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 15, color: Colors.grey.withOpacity(.3))
                  ], color: mainColor, borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  child: MaterialButton(
                      textColor: Colors.white,
                      onPressed: () {
                        Get.offAll(
                          LoginScreen(),
                        );
                      },
                      child: const Text("تسجيل الدخول  /   انشاء حساب")),
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.grey.shade700,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 0),
                  title: Text(
                    'المدينة',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  leading: Icon(
                    Icons.language,
                    color: seconderyColor,
                  ),
                  trailing: Text(
                    'الرياض',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS', color: Colors.grey.shade700),
                  ),
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.grey.shade700,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 0),
                  title: Text(
                    'ارسل لنا',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  leading: Icon(
                    Icons.email,
                    color: seconderyColor,
                  ),
                  trailing: Icon(Icons.arrow_back_ios_new_rounded),
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.grey.shade700,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 0),
                  title: Text(
                    'اتصل لنا',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  leading: Icon(
                    LineIcons.phone,
                    color: seconderyColor,
                  ),
                  trailing: Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
