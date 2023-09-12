// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../../core/functions/alertwithfield.dart';
import '../../core/functions/showalert.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';
import 'aboutus.dart';
import 'my_accountscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'اهلا بك',
          style: TextStyle(
            color: mainBlack,
            fontWeight: FontWeight.w700,
            fontFamily: 'ArbFONTS',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            parent: ScrollPhysics(),
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 4,
              ),
              Account(),
              SizedBox(
                height: 4,
              ),
              Contact(),
              SizedBox(
                height: 4,
              ),
              Other(),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse('https://sedrahcare.com/'));
                },
                child: Center(
                  child: Container(
                    width: Get.width / 2,
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            LineIcons.facebook,
                            color: seconderyColor,
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            Icons.web,
                            color: seconderyColor,
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            LineIcons.twitter,
                            color: seconderyColor,
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            LineIcons.instagram,
                            color: seconderyColor,
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            LineIcons.whatSApp,
                            color: seconderyColor,
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            LineIcons.snapchat,
                            color: seconderyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'شروط الاستخدام  .  سياسة خصوصية',
                style: TextStyle(
                    fontFamily: 'ArbFONTS',
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Other extends StatelessWidget {
  const Other({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
              onTap: () {
                displayTextInputDialog(context);
              },
              title: Text(
                'اسئلتي',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              subtitle: Text(
                'يمكمنك سؤال العيادة ة الجواب عليك',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: Icon(
                Icons.arrow_back_ios_new,
              ),
              leading: Icon(
                LineIcons.question,
                color: seconderyColor,
              )),
          ListTile(
              onTap: () {
                displayTextInputDialog2(context);
              },
              title: Text(
                'شكواتي',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              subtitle: Text(
                'تقديم شكوى',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: Icon(
                Icons.arrow_back_ios_new,
              ),
              leading: Icon(
                Icons.error,
                color: seconderyColor,
              )),
          ListTile(
              onTap: () async {
                await launchUrl(Uri.parse('tel://01205332630'));
              },
              title: Text(
                'مساعدة',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              subtitle: Text(
                'يمكننا مساعدتك',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: Icon(
                Icons.arrow_back_ios_new,
              ),
              leading: Icon(
                Icons.headset_mic_outlined,
                color: seconderyColor,
              )),
          ListTile(
              onTap: () async {
                Get.to(AboutUsScreen());
              },
              title: Text('About SedrahCare'),
              subtitle: Text(
                'عن عيادتنا',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: Icon(
                Icons.arrow_back_ios_new,
              ),
              leading: Icon(
                LineIcons.info,
                color: seconderyColor,
              )),
        ],
      ),
    );
  }
}

class Account extends StatelessWidget {
  const Account({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
              onTap: () {},
              title: Text(
                'حسابي',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              subtitle: Text(
                '+20 01205332630',
                style: TextStyle(
                  fontFamily: 'ArbFONTS',
                ),
              ),
              trailing: Icon(
                Icons.arrow_back_ios_new,
              ),
              leading: Icon(
                LineIcons.user,
                color: seconderyColor,
              )),
          ListTile(
            onTap: () {
              showTextDialog(
                  context: context,
                  title: 'SedrahCare',
                  accept: 'حسنا',
                  cancel: '',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  content:
                      'الزيارة المنزلية في مدينة الرياض اما استشارة الطبيب هاتفيا من اي مدينة بالمملكة');
            },
            title: Text(
              'المدينة',
              style: TextStyle(
                fontFamily: 'ArbFONTS',
              ),
            ),
            leading: Icon(
              Icons.language,
              color: seconderyColor,
            ),
            subtitle: Text(
              'السعودية',
              style: TextStyle(
                fontFamily: 'ArbFONTS',
              ),
            ),
            trailing: Text(
              'الرياض',
              style: TextStyle(
                  fontFamily: 'ArbFONTS', color: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            onTap: () async {
              await launchUrl(Uri.parse('mailto:info@sedracare.com'));
            },
            title: Text('ارسل لنا'),
            subtitle: Text('ارسل لنا على البريد الالكتروني'),
            leading: Icon(
              Icons.email,
              color: seconderyColor,
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          ListTile(
            onTap: () async {
              await launchUrl(Uri.parse('tel://01205332630'));
            },
            title: Text('اتصل بنا'),
            subtitle: Text('اتصل بنا على هاتف العيادة'),
            leading: Icon(
              LineIcons.phone,
              color: seconderyColor,
            ),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ],
      ),
    );
  }
}
