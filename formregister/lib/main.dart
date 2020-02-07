import 'package:flutter/material.dart';
import 'package:formregister/formscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'formdemo',
      theme: ThemeData(
        primarySwatch: Colors.teal,),
      home: Formscreen() ,
      );
  }
}