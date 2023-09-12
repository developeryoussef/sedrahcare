// ignore_for_file: prefer_const_constructors

import 'package:sedrahcare/main.dart';
import 'package:sedrahcare/model/viewcontrollermodel.dart';
import 'package:sedrahcare/view/screens/account_settings.dart';
import 'package:sedrahcare/view/screens/notificationscreens.dart';

import '../../view/screens/create_new_appointment.dart';
import '../../view/screens/doctor_home_calender.dart';
import '../../view/screens/doctor_notifications.dart';
import '../../view/screens/homepage.dart';
import '../../view/screens/my_calender_screen.dart';
import '../../view/screens/nonloginsettings.dart';

List<ViewControllerModel> viewscreenslist = [
  ViewControllerModel(screen: HomePage()),
  ViewControllerModel(screen: MyCalenderScreen()),
  ViewControllerModel(
      screen: sharedPreferences!.getBool('isLogin') == true
          ? ScreenSettings()
          : NonLoginScreenSettings()),
];

List<ViewControllerModel> doctorviewscreenslist = [
  ViewControllerModel(screen: DoctorHomeCalendarScreen()),
  ViewControllerModel(screen: DoctorNotificationsScreen()),
  ViewControllerModel(screen: DoctorCreateAppointmentScreen()),
];
