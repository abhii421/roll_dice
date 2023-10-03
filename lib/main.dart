import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy_sec_2/gradient_container.dart';



void main ()
{
  // Set the status bar color to white
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white10, // Change this to your desired color
  ));
  runApp(

     MaterialApp(debugShowCheckedModeBanner: false,
      home : Scaffold(
        //In the body, gradient container class is called
        //(which is present in the gradient_container.dart file)
        //the data is fetched and finally main.dart file is run

      body : GradientContainer(

      ),

    )
  ),
  );
}