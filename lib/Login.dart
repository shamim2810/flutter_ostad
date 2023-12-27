import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  String msg;
  LoginPage(
      this.msg,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
          child: Center(
            child: ElevatedButton(
                onPressed: (){},
                child: Text('Login'),
            ),
          )
      ),
    );
  }
}
