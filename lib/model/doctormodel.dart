// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class DoctorModel {
  final String? name;
  final String? imageurl;
  final String? category;
  final double? doctorrate;
  final double? price;
  final List<String> appointmenttimes;
  const DoctorModel(
      {required this.imageurl,
      required this.category,
      required this.name,
      required this.appointmenttimes,
      required this.doctorrate,
      required this.price});
}
