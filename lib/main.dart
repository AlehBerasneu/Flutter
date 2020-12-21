import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_flutter/pages/LoginPage.dart';


import 'models/Country.dart';
import 'models/Message.dart';
import 'models/People.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<CountryDataProvider>(
          create:(context)=>CountryDataProvider(),
        ),
        ChangeNotifierProvider<PeopleDataProvider>(
          create:(context)=>PeopleDataProvider(),
        ),
      ChangeNotifierProvider<MessageDataProvider>(
         create:(context)=>MessageDataProvider(),)
      ],
      child: MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}


