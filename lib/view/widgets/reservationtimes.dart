// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/controllers/navigationcontroller.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/widgets/doctorbody.dart';

import '../../core/functions/showalert.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class ReservationTimes extends StatelessWidget {
  final List<String> appointmenttimes;
  const ReservationTimes({super.key, required this.appointmenttimes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appointmenttimes.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [],
          ),
        );
      },
    );
  }
}
