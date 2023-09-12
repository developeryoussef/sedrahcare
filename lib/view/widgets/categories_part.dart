// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:sedrahcare/view/screens/pharmacy_screen.dart';

import '../screens/call_doctor_screen.dart';
import '../screens/home_visit_categories.dart';
import '../screens/mediacal_tests_screen.dart';
import '../screens/nurse_visit_screen.dart';
import '../widgets/category_widget.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';

class CategoriesPart extends StatelessWidget {
  const CategoriesPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RowWidget(
            first: CategoryWidget(
              spec: 'زيارة منزلية',
              imageurl: 'assets/Pediatrician-amico.png',
              onTap: () {
                Get.to(HomeVisitCategoriesScreen());
              },
            ),
            second: CategoryWidget(
              // onTap: () => Get.to(CallDoctorScreen()),
              spec: 'مكالمة طبيب',
              imageurl: 'assets/onB3.png',
            ),
          ),
          RowWidget(
            first: CategoryWidget(
              onTap: () => Get.to(MedicalTestScreen()),
              spec: 'تحليل منزلي',
              imageurl: 'assets/Diabetes-bro.png',
            ),
            second: CategoryWidget(
              onTap: () => Get.to(NurseVisitScreen()),
              spec: 'زيارة ممرضة',
              imageurl: 'assets/Physical therapy exercise-bro.png',
            ),
          ),
        ],
      ),
    );
  }
}
