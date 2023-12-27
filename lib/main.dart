import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ostad/Home.dart';
import 'package:flutter_ostad/Login.dart';
import 'package:flutter_ostad/Profile.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );

    /* return MaterialApp(
     initialRoute: '/',
      routes: {
       '/':(context)=>HomePage(),
        '/login':(context)=>LoginPage(),
        '/profile':(context)=>ProfilePage(),
      },
    );*/
  }
}