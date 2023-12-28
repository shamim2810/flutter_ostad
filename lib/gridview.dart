import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  mySnackBar(context, message){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  var MyItems = [
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Basic Home Laptop",
      "price": "499.99"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Student Workstation",
      "price": "579.99"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Gaming Powerhouse",
      "price": "1299.99"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Professional Desktop",
      "price": "825.50"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Ultra-Thin Laptop",
      "price": "999.00"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Budget Desktop PC",
      "price": "399.99"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Compact Netbook",
      "price": "299.99"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "High-End Workstation",
      "price": "1450.00"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Multimedia Entertainment System",
      "price": "850.00"
    },
    {
      "img": "https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_640.jpg",
      "title": "Portable Business Laptop",
      "price": "650.00"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view Builder'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
            itemCount: MyItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 2),
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){mySnackBar(context, MyItems[index]['price'].toString());},
                child: Card(
                  elevation: 2.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Image.network(MyItems[index]['img'].toString(),fit: BoxFit.fill,)),
                      Padding(padding: EdgeInsets.all(8.0),child: Text(MyItems[index]['title'].toString()),),
                      Padding(padding: EdgeInsets.all(8.0),child: Text(MyItems[index]['price'].toString()),)
                    ],
                  ),
                ),
              );
            })

      ),
    );
  }
}
