import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  Message({Key key}) : super(key: key);

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
              title: Text('Someone'),
              subtitle: Text('Last message. text text text.'),
            ),
          ],
        ),
      ),
    );
  }

  void MessagePost(){
    //добавление к списку сообщений нового и вызов функции отправки сообщения через api
  }
}
