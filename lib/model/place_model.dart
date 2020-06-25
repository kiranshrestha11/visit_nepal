import 'package:flutter/material.dart';

class Place with ChangeNotifier {
  String id;
  String imgUrl;
  String city;
  String description;
  bool isFavourite;

  Place({
    @required this.id,
    @required this.imgUrl,
    @required this.city,
    @required this.description,
    this.isFavourite,
  });

  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
