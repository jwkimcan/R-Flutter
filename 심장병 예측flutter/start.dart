import 'package:flutter/material.dart';
import 'package:heart_failure_prediction_app/view/question/questionpage1.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              '심장질환 자가검진',
              style: TextStyle(fontSize: 30.0, color: Colors.blueGrey),
            ),
            const SizedBox(height: 150),
            const Text(
              '본 검사는 회원님의 평소 생활 습관 , 건강 상태등을 분석하여',
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              '회원님의 심장 질환 유무를 추측해보는 검사입니다.',
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              '신중하게 문제를 읽고 답안을 작성해 주시길 바랍니다.',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Questionpage1()),
                );
              },
              child: const Text("자가진단 시작하기"),
            ),
          ],
        ),
      ),
    );
  }
}
