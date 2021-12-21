import 'package:flutter/material.dart';
import 'package:heart_failure_prediction_app/view/health_schedule/listview.dart';
import 'package:heart_failure_prediction_app/view/tab_five.dart';
import 'package:heart_failure_prediction_app/view/tab_four.dart';
import 'package:heart_failure_prediction_app/view/tab_one.dart';
import 'package:heart_failure_prediction_app/view/tab_three.dart';
import 'package:heart_failure_prediction_app/view/tab_two.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator({Key? key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  var _index = 0;
  var _pages = [
    TabOne(),
    TabTwo(),
    TabThree(),
    TabFour(),
    Listview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Predict',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_quote,
            ),
            label: 'News',
            backgroundColor: Colors.blueGrey,
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
            backgroundColor: Colors.blueGrey,
          ),

           BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_run_outlined,
            ),
            label: 'Health',
            backgroundColor: Colors.blueGrey,
          ),
        ],
        currentIndex: _index,
      ),
    );
  }
}
