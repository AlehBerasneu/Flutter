import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_flutter/pages/DialoguePage.dart';

class DialogueHomePage extends StatelessWidget {
  DialogueHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg'),
              ),
              title: Text('Dialog sample'),
              subtitle: Text('Last message. text text text.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Go'),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DialoguePage()));},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
