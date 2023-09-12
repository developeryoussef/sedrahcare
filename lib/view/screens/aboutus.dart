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

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: seconderyColor,
        title: Text(
          'عن SedrahCare',
          style: TextStyle(
            fontFamily: 'ArbFONTS',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: Get.width,
              height: 350,
              child: Center(
                child: Image.asset('assets/sedralogo.png'),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              color: seconderyColor,
              width: Get.width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'خدمات طبية و تمريضية متكامله تقدم لك فى منزلك تحت اشراف طبي معتمد.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          'شركة سيدرا هي شركة رائدة في مجال الرعاية الطبية والخدمات المنزلية الطب الافتراضي عبر الفيديو. نحن نسعى لتقديم كافة أنواع الخدمات الطبية في جميع التخصصات الطبية ، مريض ومريض مكالمات الفيديو. لدينا فريق متكامل من التمريض والعلاج الطبيعي والتغذية لتقديم كافة الخدمات الطبية بما يضاهي الخدمات المقدمة من قبل المستشفيات بشكل جيد في الأوقات والوقت وتقليل المعدل بالعدوى وبأعلى معايير الجودة..',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'شركة سيدرا هي شركة رائدة في مجال الرعاية الطبية والخدمات المنزلية الطب الافتراضي عبر الفيديو. نحن نسعى لتقديم كافة أنواع الخدمات الطبية في جميع التخصصات الطبية ، مريض ومريض مكالمات الفيديو. لدينا فريق متكامل من التمريض والعلاج الطبيعي والتغذية لتقديم كافة الخدمات الطبية بما يضاهي الخدمات المقدمة من قبل المستشفيات بشكل جيد في الأوقات والوقت وتقليل المعدل بالعدوى وبأعلى معايير الجودة..',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
