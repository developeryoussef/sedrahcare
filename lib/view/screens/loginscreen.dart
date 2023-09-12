// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/view/screens/registerscreen.dart';
import 'package:sedrahcare/view/screens/resetpassword.dart';
import 'package:sedrahcare/view/screens/verifycode.dart';
import 'package:sedrahcare/view/screens/viewcontroller.dart';

import '../../controllers/phoneauthcontroller.dart';
import '../../core/colors.dart';
import '../widgets/phonetextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.off(ViewController(),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: mainColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 2)
                            ],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "الدخول كزائر",
                            style: TextStyle(
                                fontFamily: 'ArbFONTS',
                                color: mainLightColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  'assets/Enter OTP-bro.png',
                ),
              ),
              Text(
                "تسجيل الدخول",
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "تسجيل الدخول عبر رقم هاتف",
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
                    controller: phoneAuthController.loginPasswordController,
                    cursorColor: seconderyColor,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.security,
                        color: seconderyColor,
                      ),
                      border: InputBorder.none,
                      hintText: "كلمة السر",
                    ),
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'هل نسيت كلمة السر ؟',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        color: mainBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        'تغيير كلمة السر',
                        style: TextStyle(
                            fontFamily: 'ArbFONTS',
                            color: seconderyColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Get.to(ResetPasswordScreen(),
                          transition: Transition.leftToRight);
                    },
                  ),
                ],
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                child: Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      'ارسال رمز التحقق',
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
                  Get.to(VerificationScreen(),
                      transition: Transition.leftToRight);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ليس لديك حساب؟',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        color: mainBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        'انشاء حساب جديد',
                        style: TextStyle(
                            fontFamily: 'ArbFONTS',
                            color: seconderyColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Get.to(RegisterScreen(),
                          transition: Transition.leftToRight);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
