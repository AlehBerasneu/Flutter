import 'package:flutter/material.dart';
import 'package:telegram_flutter/models/Message.dart';
import 'package:provider/provider.dart';
import 'package:telegram_flutter/models/People.dart';

class DialoguePage extends StatelessWidget {

  final String peopleId;

  DialoguePage({Key key, this.peopleId}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final peopleData = context.watch<PeopleDataProvider>().getElementById(peopleId);
    final messageData = Provider.of<MessageDataProvider>(context);

    return ChangeNotifierProvider<MessageDataProvider>(
        create: (context)=> messageData,

      child: Scaffold(
          appBar: AppBar(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(peopleData.imgUrl),
                radius: 20.0
            ),
            title: Text(peopleData.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),


            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.restore_from_trash,
                  color: Colors.white,
                ),
                onPressed: () {
                  Provider.of<MessageDataProvider>(context, listen: false)
                      .clearAllMessages();
                  //
                },
              )
            ],

          ),
          backgroundColor: Colors.white,
          body: SafeArea(


            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[


                  Container(
                    padding: const EdgeInsets.all(5.0),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,

                    child: ListView.builder(

                      scrollDirection: Axis.vertical,
                      itemCount: messageData.items.length,
                      itemBuilder: (context, int index)=>

                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Container(
                                  height:160,
                                  /*decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(15),
                                    image:DecorationImage(
                                      image: NetworkImage(context.watch<PeopleDataProvider>().getElementById(
                                          messageData.items[index].authorId).imgUrl
                                      ),
                                      alignment: Alignment.centerLeft,
                                      fit: BoxFit.contain,
                                    ),
                                  ),*/

                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(context.watch<PeopleDataProvider>().getElementById(
                                          messageData.items[index].authorId).imgUrl),
                                      radius: 30,
                                    ),
                                    title: Text(context.watch<PeopleDataProvider>().getElementById(
                                        messageData.items[index].authorId).name),
                                    subtitle: Text(messageData.items[index].text),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

              Provider.of<MessageDataProvider>(context, listen: false)
                  .addMessage(peopleId,"0");
            },

            child: Icon(Icons.add_comment),
            backgroundColor: Colors.lightBlue,
          ),
        ),
    );

  }
}
