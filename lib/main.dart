import 'dart:ui';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webapp/provider/theme_provider.dart';
import 'package:webapp/screen/coming_soon.dart';
import 'package:webapp/screen/portfolio_screen.dart';
import 'package:webapp/utilities/url.dart';

void main() {
  runApp(ListenableProvider(create: (_) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // ThemeProvider provider = ThemeProvider();
 final bool isDark = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).isDark;
    return MaterialApp(
      title: 'Baksman',
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
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
    ThemeProvider provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    // launchUrl("https:www.google.com");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ComingSoonScreen();
                    }));
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
                    urlLauncher("https://twitter.com/ibrahimshehuib4");
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
                  onTap: () {
                    urlLauncher(
                        "https://drive.google.com/file/d/13lxVZepeZU2gbvWlIzPVsiyB5FINua1D/view");
                  },
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
                IconButton(
                    icon: FaIcon(
                      provider.isDark
                          ? FontAwesomeIcons.lightbulb
                          : FontAwesomeIcons.moon,
                      // color: Colors.white,
                    ),
                    onPressed: () {
                      provider.changeTheme();
                      // setState(() {
                      //   widget.provider.changeTheme();
                      // });
                      // setState(() {
                      //   widget.isDark = !widget.isDark;
                      // });
                    })
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

                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                          ),
                            BoxShadow(
                            color: Colors.black
                          )
                        ],
                        color: Colors.teal,
                        border: Border.all(color: Colors.white, width: 5),
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
                      style: textStyle2(),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    RotateAnimatedTextKit(
                        repeatForever: true,
                        duration: Duration(seconds: 2),
                        textStyle: textStyle2(),
                        text: ["mobile", "web", "desktop"]),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "apps with Flutter",
                      style: textStyle2(),
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
                        textStyle: textStyle2(),
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
                        urlLauncher("https:github.com/baksman");
                      },
                      child: Tooltip(
                        message: "github",
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: FaIcon(FontAwesomeIcons.github,
                                  color: Colors.white)),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        urlLauncher(
                            "https://play.google.com/store/apps/details?id=com.baksman.hiring");
                      },
                      child: Tooltip(
                        message: "Play store",
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: FaIcon(FontAwesomeIcons.appStore,
                                  color: Colors.white)),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        urlLauncher("https://twitter.com/ibrahimshehuib4");
                        // https://twitter.com/ibrahimshehuib4
                      },
                      child: Tooltip(
                        message: "twitter",
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
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

  TextStyle textStyle2() {
    return TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: "AnnieUseYourTelescope");
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

}
