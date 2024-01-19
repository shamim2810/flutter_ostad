import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
      ),
      //home: const HomeScreen(),
      home: const SecondScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;

   List<Widget> screen = [
     const Text('Home'),
     const Text('Search'),
     const Text('Person'),
     const Text('Setting'),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(child: screen[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 5,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.brown,
        selectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        onTap: (index){
          print(index);
          _selectedIndex = index;
          setState(() {

          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        ],
      ),
    );
  }
}


//TabBar
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> /*with SingleTickerProviderStateMixin*/ {
  //late final TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          centerTitle: true,
          backgroundColor: Colors.grey,
          bottom: TabBar(
              //controller: _tabController,
              unselectedLabelColor: Colors.pink,
              labelColor: Colors.white,
              indicator: UnderlineTabIndicator(
                borderSide: const BorderSide(width: 5, color: Colors.red),
                borderRadius: BorderRadius.circular(2),
                insets: const EdgeInsets.symmetric(horizontal: 50),
              ),
              indicatorWeight: 3,
              //indicatorColor: Colors.white,

              tabs: const [
                Tab(
                  icon: Icon(Icons.feed),
                  text: 'Feed',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: 'Search',
                ),
              ]
          ),
        ),
        body:  TabBarView(
          //controller: _tabController,
            children: [
              HomeScreen(),
              Center(child: Text('Feed')),
              Center(child: Text('Person')),
              Center(child: Text('Search')),
            ],
        ),
      ),
    );
  }
}


