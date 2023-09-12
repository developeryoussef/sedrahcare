// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../../data/static/productslist.dart';
import '../screens/product_screen.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';

class ProductBody extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imageurl;
  final String? price;
  final String? category;
  const ProductBody({
    super.key,
    this.title,
    this.description,
    this.imageurl,
    this.price,
    this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(imageurl.toString())),
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        title.toString(),
                        style: TextStyle(
                          color: seconderyColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Center(
                      child: Text(
                        description.toString(),
                        style: TextStyle(
                          color: mainBlack,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        price.toString(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 224, 84, 124),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'ArbFONTS',
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(ProductScreen(
                          category: category,
                          description: description,
                          imageurl: imageurl,
                          price: price,
                          title: title,
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Container(
                          child: Center(
                            child: Text(
                              'استعلام',
                              style: TextStyle(
                                color: mainBlack,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'ArbFONTS',
                              ),
                            ),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: opacitiedMainColor,
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: seconderyColor, width: 2)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 250, 250, 250),
            boxShadow: [
              BoxShadow(blurRadius: 5, color: mainBlack.withOpacity(0.1))
            ]),
      ),
    );
  }
}
