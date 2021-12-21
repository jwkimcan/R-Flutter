import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({ Key? key }) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('공지사항'),
      ),
      body: Center(
        child: Text('우리앱은ㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄱㅂㅈ'),
      ),
    );
  }
}