// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import 'package:sedrahcare/view/screens/verifycode.dart';
import 'package:sedrahcare/view/screens/viewcontroller.dart';
import '../../controllers/phoneauthcontroller.dart';
import '../../core/colors.dart';
import '../widgets/phonetextfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  'assets/Login-pana.png',
                ),
              ),
              Text(
                "انشاء حساب",
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "انشاء حساب عبر رقم الهاتف",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'ArbFONTS',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Expanded(
                            child: TextFormField(
                          controller: phoneAuthController.firstNameController,
                          cursorColor: seconderyColor,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'الاسم الاول',
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          boxShadow: [],
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Expanded(
                            child: TextFormField(
                          controller: phoneAuthController.secondNameController,
                          cursorColor: seconderyColor,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "الاسم الاخير",
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              PhoneTextField(
                  controller: phoneAuthController.registerPhoneNumber),
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
                    controller: phoneAuthController.registerPasswordController,
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
                    'لديك حساب بالفعل؟',
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        color: mainBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            fontFamily: 'ArbFONTS',
                            color: seconderyColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Get.to(LoginScreen(), transition: Transition.leftToRight);
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
