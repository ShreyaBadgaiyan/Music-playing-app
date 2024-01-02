import 'package:flutter/material.dart';

void main(){
  //After writing the main function that's the void main, we firstly need to take care to run our app.
  //To do this we write runApp
//runApp is a function from flutter material used to run the application
//There are two types of theming provided which are materialApp and cupertinoApp
//Material spp id the top level widget whcih can contain title home routes themes etc.


 runApp(MaterialApp(
title:'GB Music Bash' ,
   home:Text('My app'),
 ));
}