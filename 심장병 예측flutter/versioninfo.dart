import 'package:flutter/material.dart';

class VersionInfo extends StatefulWidget {
  const VersionInfo({ Key? key }) : super(key: key);

  @override
  _VersionInfoState createState() => _VersionInfoState();
}

class _VersionInfoState extends State<VersionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('버전 정보'),
      ),
      body: GestureDetector(
        onTap: (){
          _showDialog(context);
        },
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Icon(Icons.system_update,
            size: 150,
            color: Colors.black54,
            ),
            SizedBox(
              height: 20,
            ),
            Text('(Ver 12.0.1)',
            style: TextStyle(fontWeight: FontWeight.w800),
            ),
            ],
          ) 
        ),
      ),
    );
  }

   _showDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('Ver 12.0.1'),
          content: const Text('현재 앱은 최신버전 입니다.'),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
               child: const Text('확인'))
          ],
        );
      },
      );
  }

}// End