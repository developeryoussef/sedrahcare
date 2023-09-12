// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, use_key_in_widget_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:line_icons/line_icons.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/data/static/onboardingdata.dart';
import 'package:sedrahcare/view/screens/doctorviewcontroller.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../controllers/navigationcontroller.dart';
import '../../core/colors.dart';
import '../../data/static/navbardata.dart';
import '../../data/static/viewscreenslist.dart';
import '../widgets/custombottomnavbar.dart';
import '../widgets/customdoctornavbar.dart';
import '../widgets/dotcont.dart';
import '../widgets/viewcontrollerslider.dart';

class DoctorDatePickerScreen extends StatefulWidget {
  final DateTime? selectedTime;
  const DoctorDatePickerScreen({required this.selectedTime});

  @override
  State<DoctorDatePickerScreen> createState() => _DoctorDatePickerScreenState();
}

class _DoctorDatePickerScreenState extends State<DoctorDatePickerScreen> {
  String? fromselectedTime;
  Future<void> fromshow() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        confirmText: 'تأكيد',
        cancelText: 'الغاء',
        helpText: 'اختيار الوقت',
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                padding: EdgeInsets.all(10),
                viewInsets: EdgeInsets.all(10),
                size: Size(Get.width - 200, Get.height - 200),
                viewPadding: EdgeInsets.all(10),
                navigationMode: NavigationMode.directional,
                alwaysUse24HourFormat: true,
              ),
              child: child!);
        });
    if (result != null) {
      setState(() {
        fromselectedTime = result.format(context);
      });
    }
  }

  String? toselectedTime;
  Future<void> toshow() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        confirmText: 'تأكيد',
        cancelText: 'الغاء',
        helpText: 'اختيار الوقت',
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                padding: EdgeInsets.all(10),
                viewInsets: EdgeInsets.all(10),
                size: Size(Get.width - 200, Get.height - 200),
                viewPadding: EdgeInsets.all(10),
                navigationMode: NavigationMode.directional,
                alwaysUse24HourFormat: true,
              ),
              child: child!);
        });
    if (result != null) {
      setState(() {
        toselectedTime = result.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اضافة موعد على يوم ${widget.selectedTime!.day}',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'ArbFONTS',
          ),
        ),
        elevation: 1,
        backgroundColor: mainColor,
      ),
      backgroundColor: mainLightColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 4,
              ),
              Text(
                'اضافة موعدك من الساعة',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: mainBlack.withOpacity(.8),
                  fontFamily: 'ArbFONTS',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    fromshow();
                  },
                  child: Container(
                    height: 75,
                    width: Get.width - 50,
                    child: Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 35),
                        title: Text(
                          'بداية من الساعة',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: mainBlack.withOpacity(.8),
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                        trailing: fromselectedTime == null
                            ? Icon(
                                Icons.timer,
                                color: seconderyColor,
                              )
                            : Text(
                                '${fromselectedTime}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: mainBlack.withOpacity(.8),
                                  fontFamily: 'ArbFONTS',
                                ),
                              ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: seconderyColor)),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'الى موعد',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: mainBlack.withOpacity(.8),
                  fontFamily: 'ArbFONTS',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  onPressed: () {
                    toshow();
                  },
                  child: Container(
                    child: Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 35),
                        title: Text(
                          'حتى الساعة',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: mainBlack.withOpacity(.8),
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                        trailing: toselectedTime == null
                            ? Icon(
                                Icons.timer,
                                color: seconderyColor,
                              )
                            : Text(
                                '${toselectedTime}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: mainBlack.withOpacity(.8),
                                  fontFamily: 'ArbFONTS',
                                ),
                              ),
                      ),
                    ),
                    height: 75,
                    width: Get.width - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: seconderyColor)),
                  )),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  if (toselectedTime == null || fromselectedTime == null) {
                    Get.snackbar(
                        'SedrahCare Doctors', 'لم يتم اضافة جميع الاوقت ');
                  } else {
                    Get.snackbar('SedrahCare Doctors',
                        'تم اضافة الموعد بنجاح على يوم ${widget.selectedTime!.day}');
                    Get.off(DoctorViewController());
                  }
                },
                child: Container(
                    child: Center(
                      child: Text(
                        'اضافة الموعد',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: mainLightColor,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                    ),
                    height: 55,
                    width: Get.width - 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5, color: mainBlack.withOpacity(.1))
                      ],
                      color: seconderyColor,
                      borderRadius: BorderRadius.circular(20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
