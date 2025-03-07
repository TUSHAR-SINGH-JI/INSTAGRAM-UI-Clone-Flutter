import 'package:flutter/material.dart';
import 'package:instagram_clone/account.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void _navigateBottombar(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  final List<Widget> _child = [
  Home(),
   Search(),
    Reels(),
    Shop(),
    Account()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _child[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigateBottombar,
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home_rounded),label: "")
            ,BottomNavigationBarItem(icon:Icon(Icons.search),label: "")
           , BottomNavigationBarItem(icon:Icon(Icons.mail_outline),label: "")
           , BottomNavigationBarItem(icon:Icon(Icons.movie_outlined),label: "")
           , BottomNavigationBarItem(icon:Icon(Icons.person),label: "")
          ]),
    );
  }
}
