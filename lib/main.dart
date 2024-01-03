import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ostad/homescreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
