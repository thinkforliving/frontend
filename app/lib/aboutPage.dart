import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const String pageId = 'AboutPage';

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'About Us',
        ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(),
        ),
      ),
    );
  }
}
