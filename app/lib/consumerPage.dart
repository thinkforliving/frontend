import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:thinkforliving/module/consumer.dart';

import 'module/product.dart';

class ConsumerPage extends StatefulWidget {
  static const String pageId = 'ConsumerPage';

  @override
  _ConsumerPageState createState() => _ConsumerPageState();
}

class _ConsumerPageState extends State<ConsumerPage> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _entityName;
  String _entityEmail;
  String _entityPhone;
  List<Product> _products = [];
  final List<Widget> _productsWidgets = [];

  void _validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      Consumer consumer = Consumer(
        name: _entityName,
        email: _entityEmail,
        phone: _entityPhone,
        products: _products,
      );
      Firestore.instance.collection('consumers').add(consumer.toMap());
      print('add to db');
    }

    return;
  }

  List<Widget> getInfoWidgets() {
    return <Widget>[
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Name',
        ),
        onSaved: (String value) => _entityName = value,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Email',
        ),
        onSaved: (String value) => _entityEmail = value,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Phone',
        ),
        onSaved: (String value) => _entityPhone = value,
      ),
      Divider(
        color: Colors.grey,
      ),
    ];
  }

  List<Widget> getProductAddButtonWidgets() {
    return <Widget>[
      Divider(
        color: Colors.grey,
      ),
      RaisedButton(
        onPressed: () {
          setState(() {
            _productsWidgets.add(
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Product',
                ),
                onSaved: (String value) => _products.add(
                  Product(
                    productName: value,
                  ),
                ),
              ),
            );
          });
        },
        child: Text(
          'Add Product',
        ),
      ),
    ];
  }

  List<Widget> getSubmitButtonWidgets() {
    return <Widget>[
      RaisedButton(
        onPressed: () => _validateAndSave(),
        child: Text(
          'Submit',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Essential Entity Register',
        ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: getInfoWidgets() +
                  _productsWidgets +
                  getProductAddButtonWidgets() +
                  getSubmitButtonWidgets(),
            ),
          ),
        ),
      ),
    );
  }
}
