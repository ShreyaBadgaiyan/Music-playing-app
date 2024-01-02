
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //SafeArea is used to show our content properly and safely.
    return SafeArea(child: Text('Home',style: TextStyle(fontSize: 40,color:Colors.yellow)));
  }
}
