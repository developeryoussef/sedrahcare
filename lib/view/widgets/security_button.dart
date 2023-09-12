// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../core/functions/alertwithfield.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/row_widgets.dart';

class SecurityButton extends StatelessWidget {
  const SecurityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: ListTile(
            onTap: () {
              Get.snackbar('SedrahCare', 'عفوا هذه الخدمة غير متوفرة الآن');
            },
            leading: Icon(
              Icons.privacy_tip_sharp,
              shadows: [
                Shadow(blurRadius: 5, color: Colors.grey.withOpacity(.5))
              ],
              color: Color.fromARGB(255, 224, 84, 124),
              size: 37,
            ),
            title: Text('التأمين الطبي',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: mainBlack.withOpacity(.85),
                    fontSize: 17,
                    fontWeight: FontWeight.w600)),
            subtitle: Text('احجز طبيب بالتأمين او اطلب دواء بالتأمين',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: mainBlack.withOpacity(.8),
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500)),
            trailing: Icon(
              Icons.arrow_back_ios_new,
              color: opacitiedSeconderyColor,
            ),
          ),
        ),
        height: 100,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(.12))
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: ListTile(
            onTap: () {
              displayTextInputDialog(context);
            },
            leading: Icon(
              LineIcons.question,
              shadows: [
                Shadow(blurRadius: 5, color: Colors.grey.withOpacity(.5))
              ],
              color: seconderyColor,
              size: 37,
            ),
            title: Text('اسألأ سؤال',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: mainBlack.withOpacity(.85),
                    fontSize: 17,
                    fontWeight: FontWeight.w600)),
            subtitle: Text('يمكنك الآن سؤال العيادة و الجواب عليك',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: mainBlack.withOpacity(.8),
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500)),
            trailing: Icon(
              Icons.arrow_back_ios_new,
              color: opacitiedSeconderyColor,
            ),
          ),
        ),
        height: 100,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(.12))
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
