import 'package:flutter/material.dart';
import './LoginScreenWidgets/LoginForm.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'tinder',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Terms of privacy... Click to see'),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.help),
                        iconSize: 35,
                        onPressed: () {
                          Navigator.of(context).pushNamed('./terms-privacy');
                        },
                      ),
                      LoginForm(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).accentColor,
        Theme.of(context).primaryColor
      ], begin: Alignment.topRight, end: Alignment.bottomRight)),
    ));
  }
}
