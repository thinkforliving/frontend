import 'package:flutter/material.dart';

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
  String _entityRequirement;

  void _validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return;
    }

    return;
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
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Entity Name',
                  ),
                  onSaved: (String value) => _entityName = value,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Entity Email',
                  ),
                  onSaved: (String value) => _entityEmail = value,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Entity Phone',
                  ),
                  onSaved: (String value) => _entityPhone = value,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Entity Requirement',
                  ),
                  onSaved: (String value) => _entityRequirement = value,
                ),
                RaisedButton(
                  onPressed: () => _validateAndSave(),
                  child: Text(
                    'Submit',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
