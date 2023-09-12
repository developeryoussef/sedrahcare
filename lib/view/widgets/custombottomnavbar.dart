// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sedrahcare/data/static/onboardingdata.dart';

import '../../controllers/navigationcontroller.dart';
import '../../core/colors.dart';
import '../../data/static/navbardata.dart';
import '../widgets/dotcont.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationControllerImp>(
      init: NavigationControllerImp(),
      builder: (controller) {
        return Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 7,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemCount: navbarList.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.updatePage(index);
                      },
                      child: AnimatedContainer(
                        width: Get.width / 3,
                        height: 50,
                        duration: Duration(seconds: 1),
                        child: Center(
                          child: Icon(
                            navbarList[index].icon,
                            color: controller.currentPage == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: controller.currentPage == index
                              ? mainColor
                              : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
