import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({ Key? key }) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('언어 설정'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              RadioListTile(
                value: 1, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 1;
                  });
                },
                title: Text('South Korea( Korean)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 2, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 2;
                  });
                },
                title: Text('United States( English)',
                 style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 3, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 3;
                  });
                },
                title: Text('Japan( Japanese)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 4, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 4;
                  });
                },
                title: Text('China( Chinese)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 5, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 5;
                  });
                },
                title: Text('India( Hindi)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 6, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 6;
                  });
                },
                title: Text('France( Franch)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 7, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 7;
                  });
                },
                title: Text('Germany( German)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 8, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                    _value = 8;
                  });
                },
                title: Text('Spain( Spanish)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
              RadioListTile(
                value: 9, 
                groupValue: _value, 
                onChanged: (value){
                  setState(() {
                   _value = 9;
                  });
                },
                title: Text('Russia( Russian)',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ),
                
            ],        
      ),
    );
  }

}//End