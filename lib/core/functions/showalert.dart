// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sedrahcare/core/colors.dart';

showTextDialog(
    {required BuildContext context,
    required String? title,
    required String? accept,
    required String? cancel,
    required void Function()? onPressed,
    required String? content}) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title!),
      content: Text(content!),
      actions: <Widget>[
        TextButton(
          child: Text(
            cancel!,
            style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: Text(
            accept!,
            style: TextStyle(fontFamily: 'ArbFONTS', color: mainColor),
          ),
          onPressed: onPressed!,
        ),
      ],
    ),
  );
}
