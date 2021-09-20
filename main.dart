// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navbar_google/navbar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:  NavBar(),
      
    );
  }
}