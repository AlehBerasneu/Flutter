import 'package:flutter/material.dart';
import 'package:telegram_flutter/models/Message.dart';

class DialoguePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
            backgroundImage: NetworkImage('https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg'),
            radius: 20.0
        ),
          title: Text('Dialogue Name',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              //
            },
          )
        ],

      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height - 85,
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Message(),
                ),
              ],
            )
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
          //
          // MessagePost();
          },

        child: Icon(Icons.add_comment),
        backgroundColor: Colors.lightBlue,
      ),

    );
  }
}