import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form page'),
        ),
        body: Form(
          key: _formKey,
          child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter your email', labelText: 'Email *'),
                      validator: (email) =>
                          email.isEmpty ? 'The email is required' : null,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.indigo,
                      child: Text('Submit'),
                      onPressed: pressedButton,
                    )
                  ])),
        ));
  }

  pressedButton() {
    if (_formKey.currentState.validate()) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              title: Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Ok')],
              ),
            );
          });
    }
  }
}
