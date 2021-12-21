import 'package:flutter/material.dart';

import 'package:heart_failure_prediction_app/view/tab_four_setting/drawer.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Container(
            height: 60,
          ),
          userTile(),
          divider(),
          colorTiles(),
          divider(),
          bwTiles(),
        ],
      ),
    );
  }

  Widget userTile() {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/tab_four_asset/pig.png'),
        radius: 30,
      ),
      title: Text(
        'Piggyboy',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      subtitle: Text(
        'piggyworld@gmail.com',
        style: TextStyle(fontSize: 15),
      ),
      trailing: Icon(Icons.male, color: Colors.blue, size: 40),
    );
  } //유저 리스트 항목

  Widget divider() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Divider(
        thickness: 1.5,
      ),
    );
  } // 리스트 분배

  Widget colorTiles() {
    return Column(
      children: [
        GestureDetector(
          child: colorTile(Icons.person_outline, Colors.lightBlue, '개인정보 수정'),
          onTap: () {
            Navigator.pushNamed(context, '/PersonalInfo');
          },
        ),
        GestureDetector(
          child: colorTile(Icons.notifications, Colors.yellow, '알림 설정'),
          onTap: () {
            Navigator.pushNamed(context, '/Notification');
          },
        ),
        GestureDetector(
          child: colorTile(Icons.person_add, Colors.deepPurple, '친구 초대'),
          onTap: () {
            Navigator.pushNamed(context, '/InvitedFriend');
          },
        ),
        GestureDetector(
          child: colorTile(Icons.campaign_rounded, Colors.deepOrange, '공지사항'),
          onTap: () {
            Navigator.pushNamed(context, '/Notice');
          },
        ),
        GestureDetector(
          child:
              colorTile(Icons.message_rounded, Colors.greenAccent, '약관 및 정책'),
          onTap: () {
            Navigator.pushNamed(context, '/Policy');
          },
        ),
      ],
    );
  } // 컬러 타일

  Widget colorTile(IconData icon, Color color, String text,
      {bool blackAndWhite = false}) {
    Color pickedColor = Color(0xfff3f4fe);

    return ListTile(
      leading: Container(
        child: Icon(icon, color: color, size: 35),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: blackAndWhite ? pickedColor : color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 20),
    );
  }

  Widget bwTiles() {
    Color color = Colors.black54;
    return Column(
      children: [
        GestureDetector(
          child: bwTile(Icons.info_outline, 'FAQs'),
          onTap: () {
            Navigator.pushNamed(context, '/FAQs');
          },
        ),
        GestureDetector(
          child: bwTile(Icons.language, '언어'),
          onTap: () {
            Navigator.pushNamed(context, '/Language');
          },
        ),
        GestureDetector(
          child: bwTile(Icons.file_download, '버전 정보'),
          onTap: () {
            Navigator.pushNamed(context, '/VersionInfo');
          },
        ),
        GestureDetector(
          child: bwTile(Icons.person_remove, '회원 탈퇴'),
          onTap: () {
            Navigator.pushNamed(context, '/Remove');
          },
        ),
      ],
    );
  } // 흑백타일

  Widget bwTile(IconData icon, String text) {
    return colorTile(icon, Colors.black54, text, blackAndWhite: true);
  }
} //End
