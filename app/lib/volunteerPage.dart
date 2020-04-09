import 'package:flutter/material.dart';

class VolunteerPage extends StatefulWidget {
  static const String pageId = 'VolunteerPage';

  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Volunteer Register',
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
