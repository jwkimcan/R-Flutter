import 'package:flutter/material.dart';

import 'package:heart_failure_prediction_app/view/question/start.dart';

import 'package:provider/provider.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Start(),
    );
  }
}
