// // ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:sedrahcare/core/colors.dart';
// import 'package:sedrahcare/view/screens/viewcontroller.dart';
// import '../../data/static/doctorslist.dart';
// import '../screens/home_visit_categories.dart';
// import '../widgets/category_widget.dart';
// import '../widgets/doctorbody.dart';
// import '../widgets/row_widgets.dart';
// import '../widgets/scrollable_adverse_widget.dart';

// class CallDoctorScreen extends StatefulWidget {
//   const CallDoctorScreen({super.key});

//   @override
//   State<CallDoctorScreen> createState() => _CallDoctorScreenState();
// }

// class _CallDoctorScreenState extends State<CallDoctorScreen> {
//   String name = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: seconderyColor,
//         title: Text(
//           'اختيار الطبيب الذي تريده',
//           style: TextStyle(fontFamily: 'ArbFONTS', color: Colors.white),
//         ),
//       ),
//       backgroundColor: Colors.grey.shade100,
//       body: Column(
//         children: [
//           Expanded(
//               flex: 2,
//               child: Center(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: TextFormField(
//                     cursorColor: seconderyColor,
//                     onChanged: (value) {
//                       setState(() {
//                         name = value;
//                       });
//                     },
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(
//                           LineIcons.search,
//                           color: mainBlack,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: seconderyColor),
//                             borderRadius: BorderRadius.circular(5)),
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Colors.grey.shade300, width: 10),
//                             borderRadius: BorderRadius.circular(5)),
//                         hintText: 'ابحث في الاطباء',
//                         hintStyle: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontFamily: 'ArbFONTS',
//                         )),
//                   ),
//                 ),
//               )),
//           Divider(
//             thickness: 0.1,
//             color: mainBlack,
//           ),
//           Expanded(
//             flex: 14,
//             child: Container(
//                 child: ListView.builder(
//               physics: BouncingScrollPhysics(),
//               itemCount: doctorsList.length,
//               itemBuilder: (context, index) {
//                 var data = doctorsList[index];
//                 if (name.isEmpty) {
//                   return DoctorBody(
//                     imageurl: data.imageurl,
//                     category: data.category,
//                     name: data.name,
//                     price: data.price.toString(),
//                     rate: data.doctorrate.toString(),
//                   );
//                 } else if (data.name
//                     .toString()
//                     .startsWith(name.toLowerCase())) {
//                   return DoctorBody(
//                     imageurl: data.imageurl,
//                     category: data.category,
//                     name: data.name,
//                     price: data.price.toString(),
//                     rate: data.doctorrate.toString(),
//                   );
//                 }
//                 return Center();
//               },
//             )),
//           ),
//         ],
//       ),
//     );
//   }
// }
