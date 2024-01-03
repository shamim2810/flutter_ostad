import 'package:flutter/material.dart';
import 'package:flutter_ostad/homescreen.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  /// Back to previous screen
                  Navigator.pop(context);
                },
                child: Text('Back to Setting'),),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: (){
                /// Back to previous screen
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false);
              },
              child: Text('Go to Home'),),
          ],
        ),
      ),

    );
  }
}
