import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bottom Navigation Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

Column(
children: [
Image(image: AssetImage("assets/plant.png")),
Padding(
padding: const EdgeInsets.only(top: 20,left: 20),
child: Row(
children: [Opacity(opacity: 0.7,child:
TextButton(onPressed: (){}, child: Container(
height: 20,
width: 130,
decoration: BoxDecoration(color: Colors.white,
borderRadius: BorderRadius.circular(5)),
child: Row(

children: [
Icon(Icons.subscriptions),SizedBox(width: 1,),
Text("Subscriptions"),
SizedBox(width: 10,),
Opacity(opacity: 0.7,
child: TextButton(onPressed: (){},
child: Container(
height: 20,
width: 60,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(5)
),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [Icon(Icons.live_tv_outlined),
Text("Live")],
),
)),
)
],
),
))),

],
),
)
],
),