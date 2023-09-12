// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/controllers/medicaltetscontroller.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../../controllers/nursevisitcontroller.dart';
import '../../data/static/nursevisitlist.dart';
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
import 'nursebookingscreen.dart';

class NurseVisitScreen extends StatelessWidget {
  const NurseVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NurseVisitController>(
      init: NurseVisitController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            iconTheme: IconThemeData.fallback(),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'تمريض SedrahCare',
              style: TextStyle(fontFamily: 'ArbFONTS', color: mainBlack),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 237, 236, 236),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 110,
                  child: Container(
                    child: Center(
                      child: ListTile(
                        trailing: Icon(Icons.arrow_back_ios_new_rounded),
                        title: Text(
                          'لديك اقتراح لاضافة نوع تحاليل جديد ؟',
                          style: TextStyle(
                            color: mainBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                        subtitle: Text(
                          'يمكنك الضغط هنا للاقتراح علينا',
                          style: TextStyle(
                            color: seconderyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                        leading: Icon(
                          LineIcons.nurse,
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
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Center(
                      child: ListTile(
                        onTap: () {
                          Get.snackbar('SedrahCare', 'سنوفر هذه الخدمة قريبا');
                        },
                        leading: Icon(
                          Icons.location_on_outlined,
                          color: seconderyColor,
                          size: 25,
                        ),
                        title: Row(
                          children: [
                            Text(
                              'عنوانك الحالي : ',
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
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 14,
                  child: Container(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          decelerationRate: ScrollDecelerationRate.normal),
                      itemCount: nursevisitList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: controller.selectedTest == index
                                    ? Border.all(
                                        color: seconderyColor, width: 1)
                                    : null),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            width: Get.width,
                            height: 120,
                            child: Center(
                              child: ListTile(
                                trailing: controller.selectedTest == index
                                    ? Icon(
                                        Icons.arrow_back_ios_new,
                                        color: seconderyColor,
                                      )
                                    : null,
                                onTap: () {
                                  controller.selectTest(index);
                                },
                                title: Text(
                                  nursevisitList[index].title.toString(),
                                  style: TextStyle(
                                    color: mainBlack,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'ArbFONTS',
                                  ),
                                ),
                                subtitle: Column(
                                  children: [
                                    Text(
                                      nursevisitList[index].desc.toString(),
                                      style: TextStyle(
                                        color: mainBlack,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ArbFONTS',
                                      ),
                                    ),
                                    Text(
                                      'السعر :  ${nursevisitList[index].price}',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 224, 84, 124),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ArbFONTS',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      if (controller.selectedTest == null) {
                        Get.snackbar('SedrahCare', 'لم تختر قسم التحاليل');
                      } else {
                        Get.to(NurseScreen(
                          category: 'فك الجبس',
                          price: 15.0,
                        ));
                      }
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'استمرار',
                          style: TextStyle(
                            color: seconderyColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'ArbFONTS',
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 13,
                                color: mainBlack.withOpacity(.12)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
