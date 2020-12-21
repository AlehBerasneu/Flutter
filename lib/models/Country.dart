import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Country with ChangeNotifier{
  final String id;
  final String title;
  final String code;

  Country({
    @required this.id,
    @required this.title,
    @required this.code,

  });
}

class CountryDataProvider with ChangeNotifier {
  List<Country> _items = [
    Country(
      id: "1",
      title: "Belarus",
      code: "+375"
    ),
    Country(
      id: "2",
      title: "Russia",
      code: "+7"
    ),

  ];


  UnmodifiableListView <Country> get items => UnmodifiableListView(_items);
  Country getElementById( String id)
  => _items.singleWhere((value) => value.id == id);
}