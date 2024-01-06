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

    // print(MediaQuery.of(context).orientation);
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.aspectRatio);
    // print(MediaQuery.of(context).size.flipped);
    // print(MediaQuery.of(context).size.longestSide);
    // print(MediaQuery.of(context).size.shortestSide);
    // print(MediaQuery.of(context).displayFeatures);
    // print(MediaQuery.of(context).devicePixelRatio);
    // print(MediaQuery.sizeOf(context));
    // print(MediaQuery.orientationOf(context));
    // print(MediaQuery.devicePixelRatioOf(context));

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Wrap LayoutBuilder'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
  /*    body: Column(
        children: [
          Scrollbar(
            thickness: 3,
            radius: Radius.circular(30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text('kdsfjgkjjsflskfsdfhbvgjjsdkjgdkljfhv'),
                  Text('kdsfjgkjjsflskfsdfhbvgjjsdkjgdkljfhvdfklsdf'),
                  Text('kfjkslkdflkdfflgkgs'),
                ],
              ),
            ),
          ),
           Wrap(
            alignment: WrapAlignment.center,
           crossAxisAlignment: WrapCrossAlignment.center,
           spacing: 10,
           children: [
             Text('kdsfjgkjjsflskfsdfhbvgjjsdkjgdkljfhv'),
             Text('kdsfjgkjjsflskfsdfhbvgjjsdkjgdkljfhvdfklsdf'),
             Text('kfjkslkdflkdfflgkgsatertyry'),
           ],
         ),
          OrientationBuilder(
              builder: (context, orientation) {
                print(orientation);
                if(orientation == Orientation.portrait){
                  return Text('Screen looks good');
                }else if(orientation == Orientation.landscape){
                  return Text('Screen is too wider');
                }else{
                  return Text('Unknow');
                }
              },
          ),
          Center(
            child: Text(count.toString()),
          ),
        ],
      ),*/

      body: Center(
        child: LayoutBuilder(
            builder: (context, constraints){
              if(constraints.maxWidth < 300 ){
                return Text('Tiny device');
              }else if(constraints.maxWidth < 500){
                return Text('Normal device');
              }else if(constraints.maxWidth < 700){
                return Text('Tablet device');
              }else if(constraints.maxWidth < 1200){
                return Text('Laptop device');
              }else{
                return Text('Too large');
              }
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            count = count + 1;
            setState(() {
            });
          },
          child: const Icon(Icons.add),
      ),
    );
  }
}

