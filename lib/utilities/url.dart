 import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher(String url) async {
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