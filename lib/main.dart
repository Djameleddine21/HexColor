import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Hex Color"),centerTitle: true,),
        body:
             ColorPicker(
              pickerColor: Color(0xffcc00),
              onColorChanged: null,
              pickerAreaHeightPercent: 0.8 ,
              colorPickerWidth: 300,
              enableLabel: true,
            )
      ),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HexColor',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hex Color"),
              primary: true,
              centerTitle: true,
            ),
            body: ColorPicker(color: Colors.blue, onChanged: (value) {})
      )
    )
            ;
  }
}*/
