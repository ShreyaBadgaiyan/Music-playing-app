
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget createAppBar(String message){
    return AppBar(
      backgroundColor:Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: [Padding(
        padding: const EdgeInsets.only(right:10),
        child: Icon(Icons.settings),
      )
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    //SafeArea is used to show our content properly and safely.
    return SafeArea(
      child:Container(
           //Container takes as much area as much content it has, for example, if we have less content so the area will be taken less by the container
        // color: Colors.black,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:
          [Colors.blueGrey.shade300,Colors.black],
          begin:Alignment.topLeft,end: Alignment.bottomRight,stops:[0.1,0.3]  ),

        ),
          child:Column(
            children: [
             createAppBar('Good Morning'),

            ],

          )

      )
    );
  }
}
