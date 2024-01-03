import 'package:flutter/material.dart';
import 'package:flutter_ostad/profilescreen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key, required this.userName, this.age});

  final String userName;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            Text(age.toString()),
            ElevatedButton(
                onPressed: (){
                  /// Back to previous screen
                  Navigator.pop(context,{
                    'saira' : 12
                  });
                },
                child: Text('Back to Home'),),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilScreen(),),);
              },
              child: Text('Go to Profile'),),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfilScreen(),),);
              },
              child: Text('Go to Profile by replace'),),
          ],
        ),
      ),

    );
  }
}
