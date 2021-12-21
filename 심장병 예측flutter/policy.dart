import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  const Policy({ Key? key }) : super(key: key);

  @override
  _PolicyState createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('약관 및 정책'),
      ),
      body: Center(
        child: Text('약관 없습니다.'),
      ),
    );
  }
}