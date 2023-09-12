// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

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

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({super.key});

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 248, 248),
        appBar: AppBar(
          iconTheme: IconThemeData.fallback(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  LineIcons.shoppingBag,
                  color: Colors.black,
                )),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'SedrahCare متجر',
            style: TextStyle(fontFamily: 'ArbFONTS', color: mainBlack),
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        child: TextFormField(
                          cursorColor: seconderyColor,
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                LineIcons.search,
                                color: mainBlack,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: seconderyColor,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: 'ابحث في الادوية و العلاجات',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'ArbFONTS',
                              )),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: seconderyColor,
                        size: 25,
                      ),
                      title: Row(
                        children: [
                          Text(
                            'عنوان التوصيل : ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                          Text(
                            'ميامي 45 , الاسكندرية',
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'ArbFONTS',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 231, 231, 231),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      height: 110,
                      child: Container(
                        child: Center(
                          child: ListTile(
                            trailing: Icon(Icons.arrow_back_ios_new_rounded),
                            title: Text(
                              'لديك اقتراح لاضافة دواء ؟',
                              style: TextStyle(
                                color: mainBlack,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'ArbFONTS',
                              ),
                            ),
                            subtitle: Text(
                              'يمكنك الضغط هنا للاقتراح علينا باضافة دواء جديد',
                              style: TextStyle(
                                color: seconderyColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'ArbFONTS',
                              ),
                            ),
                            leading: Icon(
                              LineIcons.addToShoppingCart,
                              color: mainBlack,
                              size: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(.1))
                            ],
                            color: opacitiedMainColor,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      width: Get.width,
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.height / 1.6,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: productsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.5),
                  itemBuilder: (context, index) {
                    var data = productsList[index];

                    if (name.isEmpty) {
                      return ProductBody(
                        imageurl: data.imageurl,
                        category: data.category,
                        description: data.description,
                        price: data.price,
                        title: data.title,
                      );
                    } else if (data.title
                        .toString()
                        .startsWith(name.toLowerCase())) {
                      return ProductBody(
                        imageurl: data.imageurl,
                        category: data.category,
                        description: data.description,
                        price: data.price,
                        title: data.title,
                      );
                    }
                    return Center();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
