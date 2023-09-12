// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/screens/choose_doctor.dart';
import 'package:sedrahcare/view/screens/viewcontroller.dart';

import '../../data/static/categorylist.dart';
import '../screens/home_visit_categories.dart';
import '../widgets/category_widget.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';

class HomeVisitCategoriesScreen extends StatefulWidget {
  const HomeVisitCategoriesScreen({super.key});

  @override
  State<HomeVisitCategoriesScreen> createState() =>
      _HomeVisitCategoriesScreenState();
}

class _HomeVisitCategoriesScreenState extends State<HomeVisitCategoriesScreen> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: seconderyColor,
        title: Text(
          'الاقسام و الاطباء',
          style: TextStyle(fontFamily: 'ArbFONTS', color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      cursorColor: seconderyColor,
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            LineIcons.search,
                            color: mainBlack,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: seconderyColor),
                              borderRadius: BorderRadius.circular(5)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300, width: 10),
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'ابحث في الاقسام',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'ArbFONTS',
                          )),
                    ),
                  ),
                )),
            Divider(
              thickness: 0.1,
              color: mainBlack,
            ),
            Expanded(
              flex: 14,
              child: Container(
                  child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  var data = categoriesList[index];
                  if (name.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ListTile(
                            onTap: () => Get.to(ChooseDoctorScreen()),
                            leading: Column(
                              children: [
                                Icon(
                                  data.icon,
                                  color: seconderyColor,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  width: 12,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 174, 104, 184),
                                      borderRadius: BorderRadius.circular(35)),
                                )
                              ],
                            ),
                            title: Text(
                              data.name.toString(),
                              style: TextStyle(
                                  fontFamily: 'ArbFONTS',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            )),
                      ),
                    );
                  } else if (data.name
                      .toString()
                      .startsWith(name.toLowerCase())) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: ListTile(
                            leading: Column(
                              children: [
                                Icon(
                                  data.icon,
                                  color: seconderyColor,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: mainBlack,
                                      borderRadius: BorderRadius.circular(35)),
                                )
                              ],
                            ),
                            title: Text(
                              data.name.toString(),
                              style: TextStyle(
                                fontFamily: 'ArbFONTS',
                              ),
                            )),
                      ),
                    );
                  }
                  return Center();
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
