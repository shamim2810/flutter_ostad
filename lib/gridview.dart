import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Data'),
        //backgroundColor: Colors.grey,
        //centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: Colors.deepOrangeAccent,
              ),
                onPressed: (){},
                child: Text('Tep here'),
            ),
            SizedBox(height: 5,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: Colors.cyan,
              ),
              onPressed: (){},
              child: Text('Tep here'),
            ),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: (){},
              child: Text('Tep here'),
            ),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: (){},
              child: Text('Tep here'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
