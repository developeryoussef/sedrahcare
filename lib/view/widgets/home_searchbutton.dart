// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';

import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ابحث & احجز الآن',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: Color.fromARGB(255, 39, 44, 44),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    LineIcons.search,
                    color: seconderyColor,
                  ),
                  title: Text(
                    'ابحث عن تخصص , طبيب او ممرضة',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        color: mainBlack.withOpacity(.7),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey, width: .4),
                ),
              ),
            ],
          ),
          height: 140,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(.12))
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
