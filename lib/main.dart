import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
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
      title: 'Baksman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         // height: 50,
            //         width: double.infinity,
            //         color: Colors.red,
            //         child: Row(
            //           children: [
            //             Spacer(),
            //             Icon(
            //               Icons.menu,
            //               color: Colors.white,
            //             ),
            //             SizedBox(
            //               width: 20,
            //             )
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    launchUrl("https:www.google.com");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    child: Text(
                      "PORTFOLIO",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    launchUrl("https://twitter.com/ibrahimshehuib4");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    child: Text(
                      "CANTACT ME",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    child: Text(
                      "RESUME",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    child: Text(
                      "HIRE",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hi, I am Engr.",
                      style: textStyle(25),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 100),
                      text: [
                        "Ibrahim Ibrahim Shehu",
                      ],
                      textStyle: textStyle(25),
                    )
                  ],
                ),

                // Text(
                //   "A passion driven mobile & backend developer",
                //   style: TextStyle(fontSize: 25),
                // ),
                // TypewriterAnimatedTextKit(
                //   speed: Duration(milliseconds: 100),
                //   text: [
                //     "A passion driven mobile & backend developer",
                //     "Creator of Get Job mobile application"
                //   ],
                //   textStyle: textStyle(25),
                // ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // boxShadow: [],
                        color: Colors.teal,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/my_pic.jpg"))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "A flutter mobile developer",
                  style: textStyle(25),
                )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I create beautiful",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RotateAnimatedTextKit(
                        repeatForever: true,
                        duration: Duration(seconds: 2),
                        textStyle: TextStyle(
                            fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                        text: ["mobile", "web", "desktop"]),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "apps with Flutter",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I'm also skilled in ",
                      style: TextStyle(fontSize: 20, fontFamily: "DoHyeon"),
                    ),
                    TypewriterAnimatedTextKit(
                        speed: Duration(seconds: 1),
                        repeatForever: true,
                        text: [
                          "Golang",
                          "Python",
                          "Django",
                          // "Do not test bugs out, design them out",
                        ],
                        textStyle: TextStyle(
                            fontSize: 20, fontFamily: "AnnieUseYourTelescope"),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // iconContainer()
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        launchUrl("https:github.com/baksman");
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Center(child: FaIcon(FontAwesomeIcons.github)),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrl(
                            "https://play.google.com/store/apps/details?id=com.baksman.hiring");
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Center(child: FaIcon(FontAwesomeIcons.appStore)),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrl("https://twitter.com/ibrahimshehuib4");
                        // https://twitter.com/ibrahimshehuib4
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Center(child: FaIcon(FontAwesomeIcons.twitter)),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  TextStyle textStyle(double fontSize) {
    return TextStyle(fontSize: fontSize, fontFamily: "DoHyeon"
        // color:
        );
  }

  // Container iconContainer(FontAwesomeIcons icon) {
  //   return Container(
  //     child: FaIcon(FontAwesomeIcons.gamepad),
  //   );
  // }

  Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      print("i can");
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      print("cant launc url");
    }
  }
}
