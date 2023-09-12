import '../../main.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api, unused_field, use_key_in_widget_constructors

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Align(
                  child: Text(
                    '16'.tr,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(''),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  onTap: () {},
                  title: Text(
                    'Youssef Hussein',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  subtitle: Text(
                    '+20 01205332630',
                    style: TextStyle(
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  leading: Icon(
                    LineIcons.user,
                    size: 30,
                    color: seconderyColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
