// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/widgets/dotcont.dart';

import '../screens/call_doctor_screen.dart';
import 'adverse_slider.dart';
import 'adversedots.dart';

class HomeDoctorCallWidget extends StatelessWidget {
  const HomeDoctorCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(CallDoctorScreen());
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('مكالمة طبيب',
                              style: TextStyle(
                                  fontFamily: 'ArbFONTS',
                                  color: mainBlack.withOpacity(.85),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700)),
                          Text('يمكنك الآن حجز لمكاملة طبيب و تحديد موعد',
                              style: TextStyle(
                                  fontFamily: 'ArbFONTS',
                                  color: mainBlack.withOpacity(.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          GestureDetector(
                            child: Container(
                              child: Center(
                                  child: Text(
                                'احجز الآن',
                                style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                    color: mainBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )),
                              margin: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              height: 55,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 12,
                                        color: Colors.grey.withOpacity(.12))
                                  ],
                                  color: opacitiedMainColor,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      'assets/your-doctor-removebg-preview.png',
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(15),
          elevation: 1,
          color: Colors.white,
        ),
      ),
    );
  }
}
