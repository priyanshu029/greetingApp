import 'package:flutter/material.dart';
import 'package:greeting_app/final.dart';
import 'theme.dart';
import 'home.dart';
import 'final.dart';

void main(){
  runApp(new MaterialApp(
    home: new Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String , WidgetBuilder>{
        '/home' :(BuildContext context) => new Home(),
        '/back' :(BuildContext context) => new back(),
        '/final' :(BuildContext context) => new finalPage(),
      },
      home: new Home(),
    );
  }
}


