// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_null_comparison

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';

import '../widgets/scrollable_adverse_widget.dart';

class CategoryWidget extends StatelessWidget {
  final String? spec;
  final String? imageurl;
  final void Function()? onTap;
  const CategoryWidget({super.key, this.spec, this.imageurl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(bottom: 5),
          width: Get.width / 2,
          height: 120,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                imageurl != null
                    ? Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                            radius: 37,
                            backgroundColor: opacitiedMainColor,
                            backgroundImage: AssetImage(
                              imageurl!,
                            )),
                      )
                    : Icon(
                        LineIcons.plus,
                        size: 40,
                        shadows: [
                          Shadow(
                              blurRadius: 5, color: Colors.grey.withOpacity(.5))
                        ],
                        color: mainColor,
                      ),
                Text(
                  spec!,
                  style: TextStyle(
                      fontFamily: 'ArbFONTS',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 3, color: Colors.grey.withOpacity(.1))
            ],
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
