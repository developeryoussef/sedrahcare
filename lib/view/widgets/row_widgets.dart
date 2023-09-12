// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';

import '../widgets/scrollable_adverse_widget.dart';

class RowWidget extends StatelessWidget {
  final Widget? first;
  final Widget? second;
  const RowWidget({
    super.key,
    this.first,
    this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        first == null ? Container() : Expanded(child: first!),
        second == null ? Container() : Expanded(child: second!),
      ],
    );
  }
}
