import 'dart:collection';

import 'package:flutter/foundation.dart';


class Message{
  final String id;
  final String authorId;
  final String text;
  final String lastMessage;

  Message({
    @required this.id,
    @required this.authorId,
    @required this.text,
    this.lastMessage,
  });
}

class MessageDataProvider with ChangeNotifier {
  String lastMessage;
  int a=1;


  List<Message> _messageItems = [
    //
    // Message(
    //     id: "1",
    //     authorId: "0",
    //     text: "hi"
    // ),
  ];

  UnmodifiableListView <Message> get items => UnmodifiableListView(_messageItems);
  Message getElementById( String id)
  => _messageItems.singleWhere((value) => value.id == id);

  void addMessage(String dialogueId ,String authorId){



        String newid= "${DateTime.now()}";
        String newText= "test message "+ a.toString();

        _messageItems.add(Message(
            id: newid,
            authorId: authorId,
            text: newText,
            ),
        );
        a= a+ 1;

       changeLastMessage(newText);
        notifyListeners();
  }


  void deleteMessage(String messageId){
    _messageItems.remove(messageId);
    notifyListeners();
  }

  void clearAllMessages(){
    _messageItems.clear();
    changeLastMessage(" ");
    notifyListeners();
  }

  void changeLastMessage(String newMessage){
    lastMessage =  newMessage;
  }


}
