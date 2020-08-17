import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibrahims portforlio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              Text(
                "I am Ibrahim Ibrahim Shehu",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
              ),
              Row(
                children: [
                  Text("I do",style: textStyle(25),),
                  SizedBox(
                    width: 10,
                  ),
                  RotateAnimatedTextKit(
                      repeatForever: true,
                      duration: Duration(seconds: 1),
                      textStyle:textStyle(25),
                      text: ["Flutter", "Go", "Django"]),
                  SizedBox(
                    width: 5,
                  ),
                  // Text("Developer")
                ],
              ),
              Text(
                "A passion driven mobile & backend developer",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ))
        ],
      ),
    );
  }

  TextStyle textStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      // color:
    );
  }
}
