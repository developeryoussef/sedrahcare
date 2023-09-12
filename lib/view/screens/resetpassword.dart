// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/view/screens/registerscreen.dart';
import 'package:sedrahcare/view/screens/verifycode.dart';

import '../../controllers/phoneauthcontroller.dart';
import '../../core/colors.dart';
import '../widgets/phonetextfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PhoneAuthController phoneAuthController = Get.put(PhoneAuthController());

    return Scaffold(
      backgroundColor: mainLightColor,
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 30),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  'assets/Enter OTP-bro.png',
                ),
              ),
              Text(
                "تغيير كلمة السر",
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "تغيير كلمة السر الخاصة بك",
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              PhoneTextField(
                controller: phoneAuthController.loginPhoneNumberController,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [],
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Expanded(
                      child: TextFormField(
                    controller: phoneAuthController.resetPasswordController,
                    cursorColor: seconderyColor,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.security,
                        color: seconderyColor,
                      ),
                      border: InputBorder.none,
                      hintText: "كلمة السر الجديدة",
                    ),
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [],
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Expanded(
                      child: TextFormField(
                    controller:
                        phoneAuthController.acceptresetPasswordController,
                    cursorColor: seconderyColor,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.security,
                        color: seconderyColor,
                      ),
                      border: InputBorder.none,
                      hintText: "تأكيد كلمة السر",
                    ),
                  )),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                child: Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      'تغيير كلمة السر و ارسال رمز التحقق',
                      style: TextStyle(
                          fontFamily: 'ArbFONTS', color: mainLightColor),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: mainColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 3.5)
                      ],
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {
                  if (phoneAuthController.acceptresetPasswordController!.text ==
                      phoneAuthController.resetPasswordController!.text) {
                    Get.to(VerificationScreen(),
                        transition: Transition.leftToRight);
                  } else {
                    Get.snackbar('تغيير كلمة السر',
                        'عدم تطابق كلمة السر الجديدة مع تأكيد كلمة السر الجديدة');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
