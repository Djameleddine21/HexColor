import 'package:flutter/material.dart';
void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HexColor',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Hex Color"),primary: true,centerTitle: true,),
        body: Center(child: Text("Hello world"),),
      ) 
    );
  }
}
