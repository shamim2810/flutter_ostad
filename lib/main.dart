import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gridview.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoHomePage(),
    );

    // return MaterialApp(
    //   home: HomePage(),
    //   theme: ThemeData(
    //     primarySwatch: Colors.grey,
    //     brightness: Brightness.light,
    //     elevatedButtonTheme: ElevatedButtonThemeData(
    //       style: ElevatedButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(0),
    //         ),
    //         backgroundColor: Colors.deepOrangeAccent,
    //       ),
    //     ),
    //     scaffoldBackgroundColor: Colors.blueGrey,
    //     appBarTheme: AppBarTheme(
    //       backgroundColor: Colors.red,
    //       titleTextStyle: TextStyle(
    //         fontWeight: FontWeight.bold,
    //         fontSize: 25,
    //         color: Colors.white,
    //       ),
    //       centerTitle: true,
    //     ),
    //     floatingActionButtonTheme: FloatingActionButtonThemeData(
    //       backgroundColor: Colors.brown,
    //       elevation: 2.0,
    //       iconSize: 25,
    //     )
    //   ),
    //   darkTheme: ThemeData(
    //     brightness: Brightness.dark,
    //   ),
    //   themeMode: ThemeMode.light,
    // );
  }
}
class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Home'),
          backgroundColor: Colors.grey,
          leading: Icon(CupertinoIcons.home),
        ),
        child: Column(
          children: [
            CupertinoButton(child: Text('Click'), onPressed: (){}),
            CupertinoButton.filled(child: Text('Click'), onPressed: (){}),
            SizedBox(height: 5,),
            ElevatedButton(onPressed: (){}, child: Text('Tep here')),
          ],
        )
    );
  }
}
