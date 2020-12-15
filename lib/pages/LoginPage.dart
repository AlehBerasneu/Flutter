import 'package:flutter/material.dart';
import 'package:telegram_flutter/models/LoginPageDropbox.dart';
import 'package:telegram_flutter/pages/HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Your Phone',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
      backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[

                Container(
                  padding: const EdgeInsets.all(50.0),
                  width: 300,
                  child: LoginPageDropBox(),
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  width: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '+375',
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),

              ],
            )
          ),




      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => HomePage()));

    },
    child: Icon(Icons.arrow_forward_sharp),
    backgroundColor: Colors.lightBlue,
    ),

    );
  }
}


