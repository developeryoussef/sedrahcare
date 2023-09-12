// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';

TextEditingController _textFieldController = TextEditingController();

Future<void> displayTextInputDialog(BuildContext context) {
  return showDialog(
    useSafeArea: true,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          'اسأل سؤالك',
          style: TextStyle(
            fontFamily: 'ArbFONTS',
          ),
        ),
        content: TextField(
          controller: _textFieldController,
          cursorColor: mainColor,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor)),
              hintText: "اسال الآن",
              hintStyle: TextStyle(fontFamily: 'ArbFONTS', color: mainColor)),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'الغاء',
              style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text(
              'ارسال',
              style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
            ),
            onPressed: () {
              if (_textFieldController.text == '' ||
                  _textFieldController.text == null) {
                Get.snackbar('SedrahCare', 'لم تكتب شيئا');
              } else {
                Get.snackbar('SedrahCare', 'تم الارسال بنجاح');
                Navigator.pop(context);
              }
            },
          ),
        ],
      );
    },
  );
}

TextEditingController textFieldController = TextEditingController();

Future<void> displayTextInputDialog2(BuildContext context) {
  return showDialog(
    useSafeArea: true,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          'اكتب شكوتك',
          style: TextStyle(
            fontFamily: 'ArbFONTS',
          ),
        ),
        content: TextField(
          controller: textFieldController,
          cursorColor: mainColor,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor)),
              hintText: "اكتب شكوتك",
              hintStyle: TextStyle(fontFamily: 'ArbFONTS', color: mainColor)),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'الغاء',
              style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text(
              'ارسال',
              style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
            ),
            onPressed: () {
              if (textFieldController.text == '' ||
                  textFieldController.text == null) {
                Get.snackbar('SedrahCare', 'لم تكتب شيئا');
              } else {
                Get.snackbar('SedrahCare', 'تم الارسال بنجاح');
                Navigator.pop(context);
              }
            },
          ),
        ],
      );
    },
  );
}
