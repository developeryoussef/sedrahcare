// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/screens/choose_doctor.dart';
import 'package:sedrahcare/view/widgets/dotcont.dart';

import 'adverse_slider.dart';
import 'adversedots.dart';

class HomeDoctorVisitWidget extends StatelessWidget {
  const HomeDoctorVisitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ChooseDoctorScreen());
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
                          Text('زيارة منزلية',
                              style: TextStyle(
                                  fontFamily: 'ArbFONTS',
                                  color: mainBlack.withOpacity(.85),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              'يمكنك الآن حجز طبيب و اختيار التخصص و الطبيب و طريقة الدفع',
                              style: TextStyle(
                                  fontFamily: 'ArbFONTS',
                                  color: mainBlack.withOpacity(.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          GestureDetector(
                            child: Container(
                              child: Center(
                                  child: Text(
                                'احجز زيارة',
                                style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                    color: mainBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )),
                              margin:
                                  EdgeInsets.only(left: 15, top: 0, bottom: 5),
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
                  height: 10,
                ),
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      'assets/200-removebg-preview.png',
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          elevation: 1,
        ),
      ),
    );
  }
}
