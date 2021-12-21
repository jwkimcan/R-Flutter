import 'package:flutter/material.dart';

class InvitedFriend extends StatefulWidget {
  const InvitedFriend({ Key? key }) : super(key: key);

  @override
  _InvitedFriendState createState() => _InvitedFriendState();
}

class _InvitedFriendState extends State<InvitedFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('친구 초대'),
      ),
      body: Center(
        child: Text('카카오톡 페이스북 인스타 링크'),
      ),
    );
  }
}