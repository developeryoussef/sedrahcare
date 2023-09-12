// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_brace_in_string_interps

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../../data/static/productslist.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/product_body.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class ProductScreen extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imageurl;
  final String? price;
  final String? category;
  const ProductScreen(
      {super.key,
      this.title,
      this.description,
      this.imageurl,
      this.price,
      this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          '$title',
          style: TextStyle(fontFamily: 'ArbFONTS', color: mainLightColor),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: mainLightColor, borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                width: Get.width,
                height: Get.height / 2.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(imageurl.toString())),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                title.toString(),
                style: TextStyle(
                  color: seconderyColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ArbFONTS',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                description.toString(),
                style: TextStyle(
                  color: mainBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'ArbFONTS',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: seconderyColor,
                size: 25,
              ),
              title: Row(
                children: [
                  Text(
                    'عنوان التوصيل  :  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                  Text(
                    'الرياض',
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ArbFONTS',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 0.5,
                    color: Color.fromARGB(255, 224, 84, 124),
                  )),
              child: Center(
                child: Text(
                  'السعر  :  ${price}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 224, 84, 124),
                    fontWeight: FontWeight.w800,
                    fontFamily: 'ArbFONTS',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'سيتم التواصل   .   خلال 24 ساعة',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey.shade600,
                fontFamily: 'ArbFONTS',
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
              child: MaterialButton(
                child: Container(
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'اضف الى عربة المشتريات',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: mainLightColor,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                      leading: Icon(
                        LineIcons.addToShoppingCart,
                        color: mainLightColor,
                        size: 30,
                      ),
                    ),
                  ),
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      color: mainColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: mainBlack.withOpacity(.2))
                      ],
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
