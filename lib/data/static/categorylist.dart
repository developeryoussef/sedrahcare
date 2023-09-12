// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

import '../../model/categorymodel.dart';

List<CategoryModel> categoriesList = [
  CategoryModel(name: 'اسنان', icon: FontAwesomeIcons.teeth),
  CategoryModel(name: 'عيون', icon: FontAwesomeIcons.eye),
  CategoryModel(name: 'نفسي', icon: FontAwesomeIcons.brain),
  CategoryModel(name: 'عظام', icon: FontAwesomeIcons.skull),
  CategoryModel(name: 'قلب و اوعية', icon: FontAwesomeIcons.heartPulse),
  CategoryModel(name: 'انف و اذن', icon: LineIcons.brain),
  CategoryModel(name: 'باطنة', icon: FontAwesomeIcons.lungs),
  CategoryModel(name: 'جراحة عامة', icon: FontAwesomeIcons.userInjured),
];
