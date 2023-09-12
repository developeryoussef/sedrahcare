// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/controllers/navigationcontroller.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/widgets/doctorbody.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/functions/showalert.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class TestBookingScreen extends StatefulWidget {
  final String? category;
  final double? price;

  const TestBookingScreen(
      {super.key, required this.category, required this.price});

  @override
  State<TestBookingScreen> createState() => _TestBookingScreenState();
}

class _TestBookingScreenState extends State<TestBookingScreen> {
  CalendarFormat calendarFormat = CalendarFormat.month;

  DateTime focusedTime = DateTime.now();

  DateTime? selectedTime;
  final bool? isCash = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationControllerImp>(
      init: NavigationControllerImp(),
      builder: (controller) {
        bool? isCash = true;

        return Scaffold(
          backgroundColor: Color.fromARGB(255, 240, 240, 240),
          appBar: AppBar(
            iconTheme: IconThemeData.fallback(),
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 240, 240, 240),
            title: Text(
              'حجز تحاليل',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontFamily: 'ArbFONTS',
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  color: Colors.white,
                  child: Center(
                    child: ListTile(
                      onTap: () {
                        Get.bottomSheet(Container(
                          width: Get.width,
                          height: 175,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  setState(() {
                                    isCash = true;
                                    Get.back();
                                  });
                                },
                                title: Text(
                                  'طريقة الدفع',
                                  style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                leading: Icon(
                                  Icons.attach_money_outlined,
                                  color: mainColor,
                                ),
                                subtitle: Text(
                                  'الدفع كاش مع الممرضة',
                                  style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                trailing:
                                    Icon(Icons.arrow_back_ios_new_rounded),
                              ),
                              ListTile(
                                onTap: () {
                                  setState(() {
                                    isCash = false;
                                    Get.back();
                                  });
                                },
                                title: Text(
                                  'طريقة الدفع',
                                  style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                leading: Icon(
                                  Icons.payment,
                                  color: mainColor,
                                ),
                                subtitle: Text(
                                  'الدفع اونلاين عبر بطاقة الائتمان',
                                  style: TextStyle(
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                trailing:
                                    Icon(Icons.arrow_back_ios_new_rounded),
                              ),
                            ],
                          ),
                        ));
                      },
                      leading: Icon(
                        isCash == true
                            ? Icons.attach_money_outlined
                            : Icons.payment,
                        color: mainColor,
                      ),
                      title: Text(
                        'طريقة الدفع',
                        style: TextStyle(
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                      subtitle: isCash == true
                          ? Text(
                              'الدفع كاش مع الطبيب',
                              style: TextStyle(
                                fontFamily: 'ArbFONTS',
                              ),
                            )
                          : Text(
                              'الدفع اونلاين عبر بطاقة الائتمان',
                              style: TextStyle(
                                fontFamily: 'ArbFONTS',
                              ),
                            ),
                      trailing: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    onTap: () {
                      showTextDialog(
                          context: context,
                          title: 'SedrahCare',
                          accept: 'حسنا',
                          cancel: '',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          content:
                              'الزيارة المنزلية في مدينة الرياض اما استشارة الطبيب هاتفيا من اي مدينة بالمملكة');
                    },
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
                    subtitle: Text(
                      'السعودية',
                      style: TextStyle(
                        fontFamily: 'ArbFONTS',
                      ),
                    ),
                    trailing: Text(
                      'الرياض',
                      style: TextStyle(
                          fontFamily: 'ArbFONTS', color: Colors.grey.shade700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: Get.width,
                    height: 80,
                    child: Center(
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          widget.category.toString(),
                          style: TextStyle(
                            color: mainBlack,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                        subtitle: Text(
                          'السعر :  ${widget.price}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 224, 84, 124),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        LineIcons.phone,
                        color: seconderyColor.withOpacity(.9),
                      ),
                      hintText: 'رقم التواصل',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      hintStyle: TextStyle(
                          fontFamily: 'ArbFONTS',
                          color: opacitiedSeconderyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    maxLength: 500,
                    cursorColor: mainColor,
                    maxLines: 10,
                    minLines: null,
                    decoration: InputDecoration(
                      hintText: 'ملاحظات نصية للطبيب',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: mainColor, width: 1.5),
                      ),
                      hintStyle: TextStyle(
                          fontFamily: 'ArbFONTS',
                          color: opacitiedSeconderyColor),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        height: Get.height / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: mainColor.withOpacity(.8),
                        ),
                        child: Center(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
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
                                firstDay: DateTime.now(),
                                lastDay: DateTime.utc(2030, 12, 31),
                                focusedDay: focusedTime,
                                headerStyle: HeaderStyle(
                                    formatButtonDecoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    formatButtonTextStyle:
                                        TextStyle(color: Colors.white),
                                    titleTextStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                calendarStyle: CalendarStyle(
                                    outsideTextStyle:
                                        TextStyle(color: mainColor),
                                    weekendTextStyle:
                                        TextStyle(color: Colors.white),
                                    rangeStartTextStyle:
                                        TextStyle(color: Colors.white),
                                    holidayTextStyle:
                                        TextStyle(color: Colors.red),
                                    weekNumberTextStyle:
                                        TextStyle(color: Colors.white),
                                    rangeEndTextStyle:
                                        TextStyle(color: Colors.white),
                                    defaultTextStyle:
                                        TextStyle(color: Colors.white),
                                    selectedTextStyle:
                                        TextStyle(color: mainBlack),
                                    selectedDecoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: Color.fromARGB(
                                              255, 255, 252, 252),
                                        ),
                                        shape: BoxShape.circle),
                                    todayDecoration: BoxDecoration(
                                        color: seconderyColor,
                                        shape: BoxShape.circle)),
                                rowHeight: 35),
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Lottie.asset(
                                        'assets/animation_lm324d9c.json',
                                        repeat: true,
                                        animate: true,
                                        addRepaintBoundary: true,
                                        height: Get.height / 4)),
                                Text(
                                  'لا يوجد اي مواعيد حاليا',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                      fontFamily: 'ArbFONTS',
                                      color: mainBlack),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
