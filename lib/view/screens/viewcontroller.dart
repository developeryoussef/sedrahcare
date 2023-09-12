// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sedrahcare/data/static/onboardingdata.dart';

import '../../controllers/navigationcontroller.dart';
import '../../core/colors.dart';
import '../../data/static/navbardata.dart';
import '../../data/static/viewscreenslist.dart';
import '../widgets/custombottomnavbar.dart';
import '../widgets/dotcont.dart';
import '../widgets/viewcontrollerslider.dart';

class ViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationControllerImp>(
      init: NavigationControllerImp(),
      builder: (controller) {
        return Scaffold(
          body: AnimatedContainer(
              duration: Duration(seconds: 1),
              child: viewscreenslist[controller.currentPage].screen),
          backgroundColor: Colors.grey.shade300,
          bottomNavigationBar: CustomBottomNavBar(),
        );
      },
    );
  }
}
