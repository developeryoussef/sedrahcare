// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/screens/viewcontroller.dart';
import '../../data/static/doctorslist.dart';
import '../screens/home_visit_categories.dart';
import '../screens/mapsreen.dart';
import '../widgets/category_widget.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';

class DoctorBody extends StatelessWidget {
  final String? name;
  final String? imageurl;
  final String? category;
  final double? doctorrate;
  final double? price;
  final List<String> appointmenttimes;
  const DoctorBody(
      {super.key,
      required this.imageurl,
      required this.category,
      required this.name,
      required this.appointmenttimes,
      required this.doctorrate,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          Get.to(MapScreen(
            appointmenttimes: appointmenttimes,
            category: category,
            doctorrate: doctorrate,
            imageurl: imageurl,
            name: name,
            price: price,
          ));
        },
        child: Material(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 12, top: 5),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(imageurl.toString()),
                        radius: 40,
                        backgroundColor: mainLightColor,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name.toString(),
                              style: TextStyle(
                                  color: seconderyColor,
                                  fontFamily: 'ArbFONTS',
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              category.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: mainBlack,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ArbFONTS',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'التقييم: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                Text(
                                  doctorrate.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 224, 84, 124),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                Text(
                                  ' / 5 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade500,
                  thickness: 0.2,
                ),
                Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        category.toString(),
                        style: TextStyle(
                          fontSize: 10,
                          color: mainBlack,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                      leading: Icon(
                        FontAwesomeIcons.userDoctor,
                        color: mainColor,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        children: [
                          Text(
                            'سعر الكشف :  ',
                            style: TextStyle(
                              fontSize: 10,
                              color: mainBlack,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                          Text(
                            '${price.toString()} ريال سعودي',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 224, 84, 124),
                              fontWeight: FontWeight.w900,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                        ],
                      ),
                      leading: Icon(
                        Icons.attach_money_sharp,
                        color: mainColor,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        children: [
                          Text(
                            'وقت انتظار الطبيب للمريض امام المنزل : ',
                            style: TextStyle(
                              fontSize: 10,
                              color: mainBlack,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                          Text(
                            '5 دقائق',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 224, 84, 124),
                              fontWeight: FontWeight.w900,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                        ],
                      ),
                      leading: Icon(
                        Icons.watch_outlined,
                        color: mainColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
