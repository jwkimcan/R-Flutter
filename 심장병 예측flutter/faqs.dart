import 'package:flutter/material.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자주 묻는 질문'),
      ),
      body: ListView(
        children: [
          image(),
        ],
      ),
    );
  }

  image() => Container(
        child: Image.asset(
          'images/tab_four_asset/heart.png',
        ),
      );
}//End