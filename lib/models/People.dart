import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:telegram_flutter/models/Message.dart';

const String myId= "0";
const String myName= "Your Name";
const String myImage= "https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg";


class People with ChangeNotifier{
  final String id;
  final String name;
  final String imgUrl;
  final String lastMessage;
  final Message dialogueMessages;

  People({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
    this.lastMessage,
    @required this.dialogueMessages,

  });
}


class PeopleDataProvider with ChangeNotifier {
  List<People> _items = [


    People(
        id: "1",
        name: "Иван Иванов",
        imgUrl:"https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg" ,
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text.",
        dialogueMessages: Message(),
    ),
    People(
        id: "2",
        name: "Петр Петров",
        imgUrl: "https://mybroadband.co.za/news/wp-content/uploads/2017/01/Profile-Picture.jpg",
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text.",
      dialogueMessages: Message(),
    ),
    People(
        id: "3",
        name: "Федор Федоров",
        imgUrl: "https://www.beautifulpeople.com/cdn/beautifulpeople/images/default_profile/signup_male.png",
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text.",
      dialogueMessages: Message(),
    ),
    People(
        id: "4",
        name: "Иван Иванов Иванович",
        imgUrl:"https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg" ,
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. Sample text.",
      dialogueMessages: Message(),
    ),
    People(
        id: "5",
        name: "Петр Петров Петрович",
        imgUrl: "https://mybroadband.co.za/news/wp-content/uploads/2017/01/Profile-Picture.jpg",
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text.",
      dialogueMessages: Message(),
    ),
    People(
        id: "6",
        name: "Федор Федоров Федорович",
        imgUrl: "https://www.beautifulpeople.com/cdn/beautifulpeople/images/default_profile/signup_male.png",
        lastMessage: "Sample text. Sample text. Sample text. Sample text. Sample text.",
      dialogueMessages: Message(),
    ),

    People(
      id: myId,
      name: myName,
      imgUrl:"https://verimedhealthgroup.com/wp-content/uploads/2019/03/profile-img.jpg" ,
      dialogueMessages: Message(),
    ),

  ];

  UnmodifiableListView <People> get items => UnmodifiableListView(_items);
  People getElementById( String id)
  => _items.singleWhere((value) => value.id == id);




}
