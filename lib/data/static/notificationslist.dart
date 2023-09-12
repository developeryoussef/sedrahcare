import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

import '../../model/notificationmodel.dart';

List<NotificationModel> notifications = [
  NotificationModel(LineIcons.doctor, 'تم الغاء حجزك بنجاح',
      '28 August 2023 : 05:23', 'اشعار من الطبيب', 'تم الالغاء'),
  NotificationModel(LineIcons.doctor, 'تم قبول حجزك بنجاح',
      '28 August 2023 : 05:28', 'اشعار من الطبيب', 'تم التوصيل')
];
