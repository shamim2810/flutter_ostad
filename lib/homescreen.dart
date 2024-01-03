import 'package:flutter/material.dart';
import 'package:flutter_ostad/settingscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  /// Route = Screen
                  /// Navigator - 1,2

                  /// Route 1(Current screen)-> Route 2 (SettingScreen)
                  /// Step 1 - Navigator - push
                  /// Step 2 - Context (current route)
                  /// Step 3 - Convert SettingScreen as Route with MaterialPageRoute
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>SettingScreen(userName: 'Saira', age: 2,),
                    ),
                  ).then((value){
                    print(value);
                  });
                },
                child: Text('go to setting'),),
          ],
        ),
      ),
    );
  }
}
