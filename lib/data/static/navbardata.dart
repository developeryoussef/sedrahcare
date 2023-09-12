// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../../model/navbarmodel.dart';

List<NavBarModel> navbarList = [
  NavBarModel(icon: LineIcons.home),
  NavBarModel(icon: LineIcons.calendar),
  NavBarModel(icon: LineIcons.user),
];

List<NavBarModel> doctornavbarList = [
  NavBarModel(icon: LineIcons.calendar),
  NavBarModel(icon: Icons.notifications_outlined),
  NavBarModel(icon: Icons.alarm_add_sharp),
];
