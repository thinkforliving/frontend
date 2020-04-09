import 'package:flutter/material.dart';
import 'package:thinkforliving/AboutPage.dart';
import 'package:thinkforliving/consumerPage.dart';
import 'package:thinkforliving/homePage.dart';
import 'package:thinkforliving/supplierPage.dart';
import 'package:thinkforliving/volunteerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Think For Living',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.pageId,
      routes: {
        HomePage.pageId: (BuildContext context) => HomePage(),
        AboutPage.pageId: (BuildContext context) => AboutPage(),
        ConsumerPage.pageId: (BuildContext context) => ConsumerPage(),
        SupplierPage.pageId: (BuildContext context) => SupplierPage(),
        VolunteerPage.pageId: (BuildContext context) => VolunteerPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
