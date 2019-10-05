import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_colorpicker/material_picker.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Hex Color"),centerTitle: true,backgroundColor: Colors.deepOrange,),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center (
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Text("Savoir le code d'un couleur",style:TextStyle(color: Colors.white)),
                onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                       return AlertDialog(
                        titlePadding: const EdgeInsets.all(0.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: Color(0xffffff),
                            onColorChanged: null,
                            colorPickerWidth: 300.0,
                            pickerAreaHeightPercent: 0.7,
                            enableAlpha: true,
                            displayThumbColor: true,
                            enableLabel: true,                   
                            ),
                          ),
                      );
                    },
                    );
                })
            ),
            Center(
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Text("Choisir une pallete de couleur",style:TextStyle(color: Colors.white)),
                onPressed:(){
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                        return AlertDialog(
                        titlePadding: const EdgeInsets.all(0.0),
                        contentPadding: const EdgeInsets.all(0.0),
                          content: SingleChildScrollView(
                            child: MaterialPicker(
                              pickerColor: Color(0Xffffff),
                              onColorChanged: null,
                              enableLabel: true,
                            ),
                          ),
                        );
                    }
                  );
                },
              ),              
            ),
          ],
        ),
        bottomNavigationBar: new BottomAppBar(
          child : new Container(child: 
            new Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                      new Text("Copyright"),
                      new Icon(Icons.copyright,color: Colors.black),
                      new Text("2019")
                    ],
              ) 
            ),
            )
    );
  }
}