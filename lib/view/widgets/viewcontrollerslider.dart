// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sedrahcare/core/colors.dart';

// import '../../controllers/navigationcontroller.dart';
// import '../../data/static/viewscreenslist.dart';

// class CustomViewSlider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<NavigationControllerImp>(
//       init: NavigationControllerImp(),
//       builder: (controller) {
//         return PageView.builder(
//             physics: BouncingScrollPhysics(
//               decelerationRate: ScrollDecelerationRate.normal,hjfygjnnk
//             ),
//             controller: controller.pageController,
//             onPageChanged: (val) {
//               controller.onPageChanged(val);
//             },
//             itemCount: viewscreenslist.length,
//             itemBuilder: (context, i) {
//               return viewscreenslist[i].screen;
//             });
//       },
//     );
//   }
// }
