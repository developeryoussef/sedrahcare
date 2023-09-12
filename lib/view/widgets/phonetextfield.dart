// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/controllers/phoneauthcontroller.dart';

import '../../core/colors.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController? controller;
  const PhoneTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    PhoneAuthController phoneAuthController = Get.put(PhoneAuthController());
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 40,
              child: Text(
                '+966',
                style: TextStyle(
                    color: Colors.grey.shade700, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "|",
              style: TextStyle(fontSize: 33, color: Colors.grey),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextFormField(
              controller: controller,
              cursorColor: seconderyColor,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "رقم الهاتف",
              ),
            ))
          ],
        ),
      ),
    );
  }
}
