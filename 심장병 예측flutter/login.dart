import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:heart_failure_prediction_app/view/login_acount/customer_account.dart';
import 'package:heart_failure_prediction_app/view/question/message.dart';
import 'package:heart_failure_prediction_app/view/tab_navigator.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  TextEditingController idcontroller = TextEditingController();
  TextEditingController pwcontroller = TextEditingController();
  
  late String result; 

  late String id; 
  late String password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //data=[];
    id = ''; 
    result='';
    password='';
    //getJSONData();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("SNS Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Image.asset('images/login_acount_asset/account_icon.png',
              fit: BoxFit.contain,
              height: 300,
              width: 300,
              
            ),
            

        
            // UserID 값 입력 
              Container(
                width: 300,
                child: TextField(
                  controller: idcontroller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outlined),
                    labelText: 'UserID',
                    border: OutlineInputBorder(
                      
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

            // PW 값 입력 
              Container(
                width:300,
                child: TextField(
                  controller: pwcontroller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_outlined),
                    labelText: 'Password',
                    border: OutlineInputBorder(  
                    ),
                  ),
                  keyboardType: TextInputType.text,

                
                ),
              ),
              


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  // 로그인 버튼
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink[300])
                  ),
                  onPressed: (){

                    idcontroller.text.toString();
                    pwcontroller.text.toString();
                    _Read(idcontroller.text.toString(), pwcontroller.text.toString());
                    //signIn(idcontroller.text.toString(), pwcontroller.text.toString());
                    //getJSONData();
                  }, 

                  child: const Text('로그인')
                ),

                const SizedBox(
                  width: 40,
                ),

                // 회원가입 버튼
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink[300])
                  ),
                  onPressed: (){
                    // 회원가입  페이지 이동 및 alert 뜨기 
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const CustomerAccount();
                    }));
                  }, 
                  child: const Text('회원가입')
                ),

                ],
              ),
            ),







            // 구글 로그인 버튼 
            ElevatedButton.icon(
                onPressed: (){
                  //signInWithGoogle();
                }, 
                icon: Image.asset('images/login_acount_asset/google_icon.png',
                  width: 30,
                  height: 20,
                  fit: BoxFit.contain,
                  ),
                label: const Text("Sign in with Google",
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.black
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),



            // 카카오 로그인 버튼 
            ElevatedButton.icon(
                onPressed: (){
                  //loginWithKakao();
                }, 
                icon: Image.asset('images/login_acount_asset/kakao_icon.png',
                  width: 32,
                  height: 35,
                  fit: BoxFit.contain,
                  ),
                label: const Text("Sign in with KAKAO",
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.black
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),

            
             // 네이버 로그인 버튼 
             ElevatedButton.icon(
                onPressed: (){
                  //signInWithNaver();
                }, 
                icon: Image.asset('images/login_acount_asset/naver_icon.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                  ),
                label: const Text("Sign in with NAVER",
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.white
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),


             // apple  로그인 버튼 

             ElevatedButton.icon(
                onPressed: (){
                  //signInWithNaver();
                }, 
                icon: Image.asset('images/login_acount_asset/apple_icon.png',
                  width: 35,
                  height: 30,
                  fit: BoxFit.contain,
                  color: Colors.white,
                  ),
                label: const Text("Sign in with APPLE",
                  style: TextStyle(
                    fontSize: 15, 
                    color: Colors.white
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),

            
          ],
        ),
      ),
    );
  }

 
  void _Read(String id, String password) async {
      var data;
      var idch; 
      var pwch;

      QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance 
      .collection('Customer')
      .where('id', isEqualTo: id).where('password', isEqualTo: password)
      .get();

      List<QueryDocumentSnapshot> docs = snapshot.docs;
      for (var doc in docs) {
      if (doc.data() != null) {
      data = doc.data() as Map<String, dynamic>;
      id = data['id']; // You can get other data in this manner.
      password =data['password'];
      idch = id; 
      pwch = password;
      _showDialog(context);
      print(id);
        
      }
    }
    if(idch == null && pwch == null){
      errorSnackBar(context);
    }
  }
    
    
      
      

  _showDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
          return AlertDialog(
            title: const Text('로그인'),
            content: const Text('로그인이 완료되었습니다.'),
            actions:[
              TextButton(
                onPressed: (){
                  Message.id= id;
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const TabNavigator();
                }));
                },
                child: const Text('확인'),
              ),
            ],
          );
        }
      );
  }

  errorSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('사용자 정보 입력에 문제가 발생 하였습니다.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }
}
