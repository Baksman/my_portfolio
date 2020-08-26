import 'package:flutter/material.dart';
import 'package:webapp/utilities/url.dart';

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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          Item(
              title: "Get Job",
              imagePath: "assets/pic1.png",
              tag: "Play store",
              tagColor: Colors.teal,
              body:
                  """Get Job is a mobile application where people can post,apply for jobs on a single click if their profile is complete, features include:
                  \n 📌Easy to use beautiful and smooth UI with animations
                  \n 📌Upload full profile including Photo,mobile number and email,
                  \n 📌Dark mode,
                  \n 📌Share and view pdf ,  
                  \n 📌Abilty to apply,search,and upload jobs,
                  \n 📌Check people who viewed my profile,
                  \n 📌Get alert through email,Push Notifications,
                  \n 📌Share jobs to social media platform,
                  \n 📌Track past jobs,
                  \n 📌and lots more ...,              
            """,
              launchUrl:
                  "https://play.google.com/store/apps/details?id=com.baksman.hiring"
              // "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              ),
          SizedBox(
            height: 10,
          ),
          Item(
              title: "Flutter fintech",
              imagePath: "assets/pic1.png",
              tag: "Github",
              tagColor: Colors.blue,
              body:
                  """A minimalistic open source fintech app built with Flutter, features include:
                  \n 📌Fingerprint Authentication
                  \n 📌Firebase/firestore database,
                  \n 📌Dark mode, 
                  \n 📌and lots more ..,
            
            """,
              launchUrl: "https:github.com/baksman"
              // "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              ),
          SizedBox(
            height: 10,
          ),
          Item(
              title: "Flutter sms/contact manager",
              imagePath: "assets/pic1.png",
              tag: "Github",
              tagColor: Colors.blue,
              body:
                  """Get Job is a mobile application where people can post,apply for jobs on a single click if their profile is complete, features include:
                  \n 📌View sent/reecived sms
                  \n 📌Make phone/send sms via app,
                  \n 📌Dark mode,
                  \n 📌Share contact via app ,  
                  \n 📌and lots more ..,
            
            """,
              launchUrl: "https:github.com/baksman"
              // "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String body;
  final String title;
  final String imagePath;
  final String launchUrl;
  final Color tagColor;
  final String tag;

  const Item(
      {Key key,
      this.body,
      this.title,
      this.tag,
      this.tagColor,
      this.imagePath,
      this.launchUrl})
      : super(key: key);

  TextStyle textStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        urlLauncher(launchUrl);
      },
      child: Card(
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
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(imagePath))),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Transform.rotate(
                      angle: 100,
                      child: Container(
                        decoration: BoxDecoration(
                            color: tagColor,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding: EdgeInsets.all(2),
                        child: Text(tag,
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
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
      ),
    );
  }
}
