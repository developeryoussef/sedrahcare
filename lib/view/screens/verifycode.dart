// ignore_for_file: prefer_const_constructors, unused_local_variable, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sedrahcare/controllers/phoneauthcontroller.dart';
import 'package:sedrahcare/main.dart';
import 'package:sedrahcare/view/screens/doctorviewcontroller.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import 'package:sedrahcare/view/screens/viewcontroller.dart';

import '../../core/colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PhoneAuthController phoneAuthController = Get.put(PhoneAuthController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainLightColor,
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(37.5),
                child: Image.asset(
                  'assets/Enter OTP-bro.png',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "التحقق من رقم الهاتف ${phoneAuthController.loginPhoneNumberController!.text}",
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "تم ارسال رمز اليك مكون من 6 ارقم",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'ArbFONTS',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  length: 6,
                  showCursor: true,
                  onCompleted: (pin) {
                    phoneAuthController.otpCode = int.parse(pin);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        'التأكد',
                        style: TextStyle(
                            fontFamily: 'ArbFONTS', color: mainLightColor),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    if (phoneAuthController.otpCode == 110257) {
                      sharedPreferences!.setBool('isLogin', true);
                      Get.snackbar('تسجيل الدخول', 'تم تسجيل الدخول بنجاح');

                      Get.offAll(ViewController());
                    } else if (phoneAuthController.otpCode == 565610) {
                      Get.offAll(DoctorViewController());
                    } else {
                      Get.snackbar(
                          'تسجيل الدخول', 'خطأ في رقم الهاتف او رقم التحقق');
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "تعديل رقم الهاتف",
                        style: TextStyle(
                            fontFamily: 'ArbFONTS',
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
