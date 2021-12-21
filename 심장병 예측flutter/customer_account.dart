import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:heart_failure_prediction_app/view/login_acount/login.dart';

class CustomerAccount extends StatefulWidget {
  const CustomerAccount({ Key? key }) : super(key: key);

  @override
  _CustomerAccountState createState() => _CustomerAccountState();
}

class _CustomerAccountState extends State<CustomerAccount> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  TextEditingController idcontroller = TextEditingController();
  TextEditingController pwcontroller = TextEditingController();
  TextEditingController sexcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  late String id; 
  late String name; 
  late String password;
  late String gender; 

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입'),
      ),

      body: Center(
        child: Column(
          children: [
          Image.asset('images/login_acount_asset/heart_icon.png',
              fit: BoxFit.contain,
              height: 400,
              width: 400,
            ),

          

            // ID 
            Container(
              width: 300,
              child: TextField(
                controller: idcontroller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outlined),
                  labelText: '회원ID',
                  border: OutlineInputBorder(     
                  ),
                )
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            
            // 이름
            Container(
              width: 300,
              child: TextField(
                controller: namecontroller,
                decoration:  InputDecoration(
                  prefixIcon: Image.asset('images/login_acount_asset/name_icon.png',
                  width: -5,
                  height: 0,
                  color: Colors.grey,
                  ),
                  labelText: '이름',
                  border: const OutlineInputBorder(     
                  ),
                )
              ),
            ),

             const SizedBox(
              height: 10,
            ),

            

            // 비밀번호 
            Container(
              width: 300,
              child: TextField(
                controller: pwcontroller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_outlined),
                  
                  labelText: '비밀번호',
                  border:  OutlineInputBorder(     
                  ),
                )
              ),
            ),
           
             const SizedBox(
              height: 10,
            ),

             Container(
               width: 300,
               child: TextField(
                controller: sexcontroller,
                decoration:  InputDecoration(
                 
                  prefixIcon: Image.asset('images/login_acount_asset/gender_icon.png',
                  width: 0,
                  height: 0,
                  color: Colors.grey,
                  ),
                
                  labelText: ' 성별',
                   border: const OutlineInputBorder(     
                   ),
                )
            ),
             ),     
          
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)
                ),
                onPressed: (){
                  // 데이터 베이스에 저장(insert)
                   id=idcontroller.text.toString();
                  name = namecontroller.text.toString();
                  password= pwcontroller.text.toString();
                  gender = sexcontroller.text.toString();
                  _Create(id,password,name,gender);
                }, 
                child: const Text('완료')
              ),
            ),


          ],
        ),
      ),
    );
  }
  void _Create(String id, String password, String name, String gender) async {
    //컬럼명 무작위 
    firestore.collection('Customer').add({ 
      "id": id,
      "password": password,
      "name":name,
      "gender":gender,
    });
    print(id);
    if(id != '' && name != '' && password != '' && gender != ''){
      _showDialog(context);
    } else{
      errorSnackBar(context);
    }
      
  }



  _showDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
          return AlertDialog(
            title: const Text('회원가입'),
            content: const Text('회원가입이 완료되었습니다.'),
            actions:[
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const Login();
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
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      ),
    );
  }
}