import 'package:applesupport/screens/account.dart';
import 'package:applesupport/screens/discover.dart';
import 'package:applesupport/screens/support.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    DiscoverScreen(),
    SupportScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Get Support'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        backgroundColor: Colors.grey[200],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index ;
    });
  }
}
