import 'package:flutter/material.dart';

class SupplierPage extends StatefulWidget {
  static const String pageId = 'SupplierPage';

  @override
  _SupplierPageState createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Supplier Register',
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
