// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthController extends GetxController {
  int? otpCode;
  TextEditingController? loginPhoneNumberController = TextEditingController();
  TextEditingController? loginPasswordController = TextEditingController();
  TextEditingController? registerPasswordController = TextEditingController();
  TextEditingController? registerPhoneNumber = TextEditingController();
  TextEditingController? firstNameController = TextEditingController();
  TextEditingController? secondNameController = TextEditingController();
  TextEditingController? resetPasswordController = TextEditingController();
  TextEditingController? acceptresetPasswordController =
      TextEditingController();
}
