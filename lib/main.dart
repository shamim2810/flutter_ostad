import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expended AspectRatio'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          /*Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.brown,
            ),
          ),*/
          /*SizedBox(
            width: 100,
            height: 100,
            child: Text('kjsdsdkjlkf lksdjdsflkj sdldkjflksjf lkjsddflfkjsd lksjdfflkjsfdd kjsdffjlk'),
          ),
          SizedBox(
            height: 500,
            width: 2000,
            child: FractionallySizedBox(
              heightFactor: 0.9,
                widthFactor: 0.7,
                alignment: Alignment.center,
                child: Text('jsdfjkhsf kjhsffkjfss jhskfhs')),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Text('skflkslk'),
          ),*/
          SizedBox(
            width: 100,
            child: AspectRatio(
                aspectRatio: 3/5,
              child: Container(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

