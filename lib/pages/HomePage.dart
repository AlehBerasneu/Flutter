import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_flutter/models/Message.dart';
import 'package:telegram_flutter/models/People.dart';

import 'DialoguePage.dart';

class HomePage extends StatelessWidget {
  String tmp=""; //

  @override
  Widget build(BuildContext context) {
    final peopleData = Provider.of<PeopleDataProvider>(context);
    final messageData = Provider.of<MessageDataProvider>(context);


    return ChangeNotifierProvider<MessageDataProvider>(
        create: (context)=> messageData,

        child: Scaffold(
          appBar: AppBar(
              title: Text('CHATS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,

          body: SafeArea(
            child: Container(
                color: Colors.white,
                child:ListView(
                  padding: const EdgeInsets.all(10.0),
                  children: <Widget>[


                    Container(
                      padding: const EdgeInsets.all(5.0),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width ,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: peopleData.items.length-1,
                        itemBuilder: (context, int index)=>
                            Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height:80,

                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(5),
                                      // image:DecorationImage(
                                      //   image: NetworkImage(peopleData.items[index].imgUrl),
                                      //   alignment: Alignment.centerLeft,
                                      //   fit: BoxFit.contain,
                                      // ),
                                    ),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(peopleData.items[index].imgUrl),
                                        radius: 30,
                                      ) ,
                                      title: Text(peopleData.items[index].name, textAlign: TextAlign.center),
                                      subtitle: Text("${messageData.lastMessage}"),
                                        //
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const SizedBox(width: 8),
                                      TextButton(
                                        child: const Text('Go'),
                                        onPressed: () {Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context) =>
                                            DialoguePage(peopleId: peopleData.items[index].id)),
                                        );},
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                      ),
                    ),
                  ],
                )
            ),
          ),

        ),
    );

  }



}

