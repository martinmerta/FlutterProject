import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      //autovalidate: true,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Login'),
            onSaved: null,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            onSaved: null,
          ),
          RaisedButton(
            child: Text('LogIn'),
            onPressed: null,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
