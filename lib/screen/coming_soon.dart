import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TypewriterAnimatedTextKit(
            speed: Duration(milliseconds: 200),
            text: [
              "Coming soon",
            ],
            repeatForever: true,
            textStyle: TextStyle(fontSize: 30)),
      ),
    );
  }
}
