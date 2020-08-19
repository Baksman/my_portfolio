import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  TextStyle textStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Portfolio"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          Item(
            title: "Get Job",
            imagePath: "assets/pic1.png",
            body:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String body;
  final String title;
  final String imagePath;

  const Item({Key key, this.body, this.title, this.imagePath})
      : super(key: key);

  TextStyle textStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: textStyle(20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: 230,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  image: DecorationImage(image: AssetImage(imagePath))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(body),
            )
          ],
        ),
      ),
    );
  }
}
