import 'package:flutter/material.dart';
import 'package:nfui/widget/round_button.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {



  const MyApp({Key key}) : super(key: key);
  void test(){
    Text('');
    
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(

          child: NFRoundButton('这是一个圆角按钮', onPressed: null),
        )
      ),
    
    );
  }
}
