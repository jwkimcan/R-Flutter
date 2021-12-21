import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/drawer.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/faqs.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/invitefriend.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/language.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/notice.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/notification.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/personalinfo.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/policy.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/remove.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/setting.dart';
import 'package:heart_failure_prediction_app/view/tab_four_setting/versioninfo.dart';

class TabFour extends StatefulWidget {
  const TabFour({Key? key}) : super(key: key);

  @override
  _TabFourState createState() => _TabFourState();
}

class _TabFourState extends State<TabFour> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Setting();
        },
        '/PersonalInfo': (context) {
          return PersonalInfo();
        },
        '/Notification': (context) {
          return Notifications();
        },
        '/InvitedFriend': (context) {
          return InvitedFriend();
        },
        '/Notice': (context) {
          return Notice();
        },
        '/Policy': (context) {
          return Policy();
        },
        '/FAQs': (context) {
          return FAQs();
        },
        '/Language': (context) {
          return Language();
        },
        '/VersionInfo': (context) {
          return VersionInfo();
        },
        '/Remove': (context) {
          return Remove();
        },
      },
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
