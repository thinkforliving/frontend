import 'package:flutter/material.dart';
import 'package:thinkforliving/AboutPage.dart';
import 'package:thinkforliving/consumerPage.dart';
import 'package:thinkforliving/supplierPage.dart';
import 'package:thinkforliving/volunteerPage.dart';

class HomePage extends StatefulWidget {
  static const String pageId = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Think For Living',
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AboutPage.pageId,
                      );
                    },
                    child: Text('About Us'),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      VolunteerPage.pageId,
                    );
                  },
                  color: Colors.green,
                  child: Text('Volunteer'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ConsumerPage.pageId,
                    );
                  },
                  color: Colors.blue,
                  child: Text('Essential Entity'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SupplierPage.pageId,
                    );
                  },
                  color: Colors.orange,
                  child: Text('Supplier'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
