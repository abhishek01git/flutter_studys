import 'package:flutter/material.dart';
import 'package:flutterlogin/screens/gridechess.dart';
import 'package:flutterlogin/screens/splashscreen.dart';
import 'package:flutterlogin/screens/todoapp.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home:MySplash(),
     
      debugShowCheckedModeBanner: false,
    );
  }
}

