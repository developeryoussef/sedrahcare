// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedrahcare/core/colors.dart';
import 'view/screens/spalshscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: prefer_const_constructor

export 'core/colors.dart';

SharedPreferences? sharedPreferences;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent.withOpacity(0),
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarContrastEnforced: true,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const SedrahCare());
}

class SedrahCare extends StatelessWidget {
  const SedrahCare({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        timePickerTheme: TimePickerThemeData(
            dayPeriodTextColor: Colors.black,
            hourMinuteTextStyle: TextStyle(
              color: mainColor,
            ),
            hourMinuteTextColor: Colors.black,
            dayPeriodColor: mainColor,
            inputDecorationTheme: InputDecorationTheme(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1,
                      color: mainColor,
                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: mainColor, width: 1),
                    borderRadius: BorderRadius.circular(20))),
            entryModeIconColor: seconderyColor,
            dialHandColor: mainLightColor,
            helpTextStyle: TextStyle(color: mainBlack),
            hourMinuteColor: opacitiedMainColor,
            dayPeriodTextStyle: TextStyle(
              color: mainBlack,
            ),
            dayPeriodBorderSide: BorderSide(
              color: mainColor,
            ),
            dialBackgroundColor: mainColor),
      ),
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
