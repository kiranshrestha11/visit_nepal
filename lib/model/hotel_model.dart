import 'package:flutter/material.dart';

class Hotel with ChangeNotifier {
  String id;
  String name;
  String address;
  double price;
  String imageUrl;
  List<String> startTimes;
  int rating;
  bool isAvailable;

  Hotel({
    this.id,
    this.name,
    this.address,
    this.price,
    this.imageUrl,
    this.startTimes,
    this.rating,
    this.isAvailable,
  });
}
