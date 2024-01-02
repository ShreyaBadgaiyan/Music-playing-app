
import 'package:flutter/material.dart';
import 'package:myapp/screens/library.dart';
import 'package:myapp/screens/search.dart';

import 'home.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  //Data is present in this section
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //UI is present in this section
  final Tabs=[Home(),Search(),YourLibrary()];
  int currentTabIndex=0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      //Object is being created of bottomNavigation Bar
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex){
          currentTabIndex=currentIndex;
          setState(() {
//Triggering to re rendering
          });
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home,color: Colors.white ),
              label:'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.search,color: Colors.white ), label:'Search'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.my_library_music,color: Colors.white ),
              label: 'Your library'
          ),

        ],
      ),
    );
  }
}

