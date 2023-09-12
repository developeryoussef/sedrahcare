// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/data/static/onboardingdata.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:get/get.dart';
import '../../controllers/navigationcontroller.dart';
import '../../core/colors.dart';
import '../../data/static/navbardata.dart';
import '../../data/static/viewscreenslist.dart';
import '../widgets/custombottomnavbar.dart';
import '../widgets/customdoctornavbar.dart';
import '../widgets/dotcont.dart';
import '../widgets/viewcontrollerslider.dart';
import 'date_picker_screen.dart';

class DoctorCreateAppointmentScreen extends StatefulWidget {
  @override
  State<DoctorCreateAppointmentScreen> createState() =>
      _DoctorCreateAppointmentScreenState();
}

class _DoctorCreateAppointmentScreenState
    extends State<DoctorCreateAppointmentScreen> {
  CalendarFormat calendarFormat = CalendarFormat.month;

  DateTime focusedTime = DateTime.now();

  DateTime? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_alarm,
          color: seconderyColor,
        ),
        backgroundColor: mainLightColor,
        onPressed: () {
          Get.bottomSheet(Container(
            color: mainLightColor,
            height: 210,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    if (selectedTime == null) {
                      Get.snackbar(
                          'SedrahCare Doctors', 'اختر اليوم من على النتيجة');
                    } else if (selectedTime != null) {
                      Get.snackbar('SedrahCare Doctors',
                          'لقد اخترت يوم ${selectedTime!.day}');
                      Get.to(DoctorDatePickerScreen(
                        selectedTime: selectedTime,
                      ));
                    }
                  },
                  title: Text(
                    'استشارة فورية',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  subtitle: Text(
                    'اضافة الموعد الى مواعيد الاستشارة الفورية',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    if (selectedTime == null) {
                      Get.snackbar(
                          'SedrahCare Doctors', 'اختر اليوم من على النتيجة');
                    } else if (selectedTime != null) {
                      Get.snackbar('SedrahCare Doctors',
                          'لقد اخترت يوم ${selectedTime!.day}');
                      Get.to(DoctorDatePickerScreen(
                        selectedTime: selectedTime,
                      ));
                    }
                  },
                  title: Text(
                    'الزيارة المنزلية',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  subtitle: Text(
                    'اضافة الموعد الى مواعيد الزيارة المنزلية',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                'اهلا بالطبيب احمد عمران',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'ArbFONTS',
                ),
              ),
              subtitle: Text(
                'اخصائي طب الاطفال و الانف و الاذن',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 13,
                  color: mainBlack,
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 27,
                backgroundImage: NetworkImage(
                    'https://saudigermanhealth.com/sites/default/files/styles/large/public/2022-06/13.png?itok=qw5NHUne'),
              ),
            ),
            Container(
              height: Get.height / 2.5,
              child: Center(
                child: SingleChildScrollView(
                  child: TableCalendar(
                      pageAnimationCurve: Curves.ease,
                      pageAnimationDuration: Duration(seconds: 1),
                      calendarFormat: calendarFormat,
                      onFormatChanged: (format) {
                        setState(() {
                          calendarFormat = format;
                        });
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(selectedTime, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          selectedTime = selectedDay;
                          focusedTime =
                              focusedDay; // update `_focusedDay` here as well
                        });
                      },
                      firstDay: DateTime.utc(2023, 9, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: focusedTime,
                      headerStyle: HeaderStyle(
                          formatButtonDecoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          formatButtonTextStyle: TextStyle(color: Colors.white),
                          titleTextStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      calendarStyle: CalendarStyle(
                          outsideTextStyle: TextStyle(color: mainColor),
                          weekendTextStyle: TextStyle(color: Colors.white),
                          rangeStartTextStyle: TextStyle(color: Colors.white),
                          holidayTextStyle: TextStyle(color: Colors.red),
                          weekNumberTextStyle: TextStyle(color: Colors.white),
                          rangeEndTextStyle: TextStyle(color: Colors.white),
                          defaultTextStyle: TextStyle(color: Colors.white),
                          selectedTextStyle: TextStyle(color: mainBlack),
                          selectedDecoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Color.fromARGB(255, 255, 252, 252),
                              ),
                              shape: BoxShape.circle),
                          todayDecoration: BoxDecoration(
                              color: seconderyColor, shape: BoxShape.circle)),
                      rowHeight: 43),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.4,
              color: Colors.white,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'اختر اليوم و اضغط على زر اضافة الموعد لاضافة موعد جديد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'ArbFONTS',
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.4,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
