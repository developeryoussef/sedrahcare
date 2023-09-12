// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/controllers/navigationcontroller.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/main.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import 'package:sedrahcare/view/screens/pharmacy_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';
import 'aboutus.dart';
import 'account_settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationControllerImp>(
      init: NavigationControllerImp(),
      builder: (controller) {
        return Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/sedralogo.png'),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 5, color: mainBlack.withOpacity(.1)),
                    ], color: seconderyColor),
                    arrowColor: seconderyColor,
                    accountName: Text('Ahmed Eid'),
                    accountEmail: Text('+20 01205332630')),
                ListTile(
                    onTap: () async {
                      await Get.to(AboutUsScreen());
                    },
                    title: Text('About SedrahCare'),
                    subtitle: Text(
                      'عن عيادتنا',
                      style: TextStyle(
                        fontFamily: 'ArbFONTS',
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                    leading: Icon(
                      LineIcons.info,
                      color: seconderyColor,
                    )),
                Spacer(),
                ListTile(
                    onTap: () async {
                      sharedPreferences!.setBool('isLogin', false);
                      Get.off(LoginScreen());
                    },
                    title: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        fontFamily: 'ArbFONTS',
                      ),
                    ),
                    subtitle: Text(
                      'يمكنك الآن تسجيل الخروج',
                      style: TextStyle(
                        fontFamily: 'ArbFONTS',
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: seconderyColor,
                    )),
              ],
            ),
          ),
          backgroundColor: mainLightColor,
          appBar: AppBar(
            iconTheme: IconThemeData.fallback(),
            elevation: 0,
            backgroundColor: mainLightColor,
            title: Text(
              'SedrahCare',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontFamily: 'ArbFONTS',
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(
                parent: ScrollPhysics(),
                decelerationRate: ScrollDecelerationRate.normal),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesPart(),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(PharmacyScreen());
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5),
                          width: Get.width / 2.2,
                          height: 120,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: CircleAvatar(
                                      radius: 37,
                                      backgroundColor: opacitiedMainColor,
                                      backgroundImage: AssetImage(
                                        'assets/Remedy-rafiki.png',
                                      )),
                                ),
                                Text(
                                  'الصيدلية',
                                  style: TextStyle(
                                      fontFamily: 'ArbFONTS',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(.1))
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SearchButton(),
                    SecurityButton(),
                    QuestionButton(),
                    ScrollableAdverseWidget(),
                    HomeDoctorVisitWidget(),
                    HomeDoctorCallWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
