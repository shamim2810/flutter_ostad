import 'package:flutter/material.dart';
import 'package:flutter_ostad/Login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
          child: Center(
            child: ElevatedButton(
                onPressed: (){
                  //Navigator.pushNamed(context, "/login");
                  //Navigator.pushReplacementNamed(context, '/login');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage("Pass home to login")));
                },
                child: Text('Home'),
            ),
          )
      ),
    );
  }
}
