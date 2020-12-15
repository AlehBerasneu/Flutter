import 'package:flutter/material.dart';
import 'package:telegram_flutter/models/DialogueHomePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title: Text('CHATS',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height - 85,
              child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),

                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: DialogueHomePage(),
                  ),
                ],
              )
            ),
          ),
        );
  }
}

