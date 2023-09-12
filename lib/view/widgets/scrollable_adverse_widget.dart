// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/widgets/dotcont.dart';

import 'adverse_slider.dart';
import 'adversedots.dart';

class ScrollableAdverseWidget extends StatelessWidget {
  const ScrollableAdverseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
        child: Column(
          children: [
            Expanded(flex: 6, child: CustomSliderAdverse()),
            Expanded(flex: 1, child: CustomDotControllerAdverse()),
          ],
        ),
        height: 215,
        width: Get.width - 5,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(.12))
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
