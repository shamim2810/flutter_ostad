import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  mySnackBar(context, message){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  var MyItems = [
    {"Name": "Shamim", "City": "Dhaka", "Age": 22},
    {"Name": "Sarah", "City": "New York", "Age": 28},
    {"Name": "Alex", "City": "London", "Age": 25},
    {"Name": "Ravi", "City": "Mumbai", "Age": 30},
    {"Name": "Elena", "City": "Paris", "Age": 26},
    {"Name": "Carlos", "City": "Mexico City", "Age": 32},
    {"Name": "Aisha", "City": "Dubai", "Age": 29},
    {"Name": "Hiroshi", "City": "Tokyo", "Age": 31},
    {"Name": "Isabella", "City": "Sydney", "Age": 27},
    {"Name": "Diego", "City": "Buenos Aires", "Age": 33},
    {"Name": "Julia", "City": "Berlin", "Age": 24},
    {"Name": "Michael", "City": "Toronto", "Age": 35},
    {"Name": "Ling", "City": "Beijing", "Age": 28},
    {"Name": "Chloe", "City": "San Francisco", "Age": 22},
    {"Name": "Ahmed", "City": "Cairo", "Age": 30},
    {"Name": "Anya", "City": "Moscow", "Age": 27},
    {"Name": "Luca", "City": "Rome", "Age": 29},
    {"Name": "Sofia", "City": "Madrid", "Age": 31},
    {"Name": "Kumar", "City": "Bangalore", "Age": 34},
    {"Name": "Nora", "City": "Oslo", "Age": 26}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SafeArea(
        child:ListView.builder(
            itemCount: MyItems.length,
            itemBuilder: (context, index){
              return InkWell(
                onDoubleTap: (){mySnackBar(context, MyItems[index]['Age'].toString());},
                child: ListTile(
                  leading: Icon(Icons.star),
                  title: Text(MyItems[index]['Name'].toString()),
                  subtitle: Text(MyItems[index]['City'].toString()),
                ),
              );


              //<----ListTile----->
              /*ListTile(
                  leading: Icon(Icons.star),
                  title: Text(MyItems[index]['Name'].toString()),
                  subtitle: Text(MyItems[index]['City'].toString()),
                  onTap: (){mySnackBar(context, MyItems[index]['Age'].toString());},
                );*/
            }
        ),
        // ListView(
        //   children: [
        //     ListTile(
        //       leading: Icon(Icons.settings,),
        //       title: Text('Setting'),
        //       subtitle: Text('This is setting'),
        //       trailing: Icon(Icons.arrow_forward),
        //       onTap: (){mySnackBar(context, 'this is setting');},
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.settings,),
        //       title: Text('Setting'),
        //       subtitle: Text('This is setting'),
        //       trailing: Icon(Icons.arrow_forward),
        //       onTap: (){mySnackBar(context, 'this is setting');},
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.settings,),
        //       title: Text('Setting'),
        //       subtitle: Text('This is setting'),
        //       trailing: Icon(Icons.arrow_forward),
        //       onTap: (){mySnackBar(context, 'this is setting');},
        //     ),
        //   ],
        // ),

      ),
    );
  }
}
