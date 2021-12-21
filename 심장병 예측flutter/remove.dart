import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  const Remove({ Key? key }) : super(key: key);

  @override
  _RemoveState createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원 탈퇴'),
      ),
      body: Center(
        child: Text('안녕히 가세요'),
      ),
    );
  }
}