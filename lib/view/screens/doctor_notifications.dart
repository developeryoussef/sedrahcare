// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/data/static/notificationslist.dart';

import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class DoctorNotificationsScreen extends StatelessWidget {
  const DoctorNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(.2))
                ],
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(notifications[index].title.toString()),
                    subtitle: Text(notifications[index].leading.toString()),
                    leading: Icon(
                      Icons.notifications,
                      color: seconderyColor,
                      size: 30,
                      weight: 50,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        notifications[index].time.toString(),
                        style: TextStyle(fontFamily: 'ArbFONTS', fontSize: 12),
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 13,
                                  color: Colors.grey.withOpacity(.15))
                            ],
                            color:
                                notifications[index].condition == 'تم الالغاء'
                                    ? Color.fromARGB(255, 224, 84, 124)
                                    : mainColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          notifications[index].condition.toString(),
                          style: TextStyle(
                              fontFamily: 'ArbFONTS',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
