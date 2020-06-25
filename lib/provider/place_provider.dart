import 'package:flutter/cupertino.dart';
import 'package:visit_nepal/model/place_model.dart';

class Places with ChangeNotifier {
  List<Place> _places = [
    Place(
      id: "1",
      imgUrl: "assets/images/Kathmandu.jpg",
      city: 'Kathmandu',
      description:
          'Kathmandu, the city of peace, lives true to this description. The city is charming, busy, bustling, serene, alive and asleep - all at once. The capital of Nepal, Kathmandu is the most accessible city in the country ',
      isFavourite: false,
    ),
    Place(
      id: "2",
      imgUrl: 'assets/images/chitwanNP2.jpg',
      city: 'Chitwan National Park',
      description:
          'The Chitwan National Park (CNP) is a world heritage property, and it also contains a Ramsar Site – Beeshazari Tal in its buffer zone. The CNP has a history of.',
      isFavourite: false,
    ),
    Place(
      id: "3",
      imgUrl: 'assets/images/Mustang.jpg',
      city: 'Mustang',
      description:
          "Experiencing the Mustang trek is one of the main highlights of Nepal’s Adventure treks. The ancient fortified city (also called Lo Manthang) claims to have the best trekking routes.",
      isFavourite: false,
    ),
    Place(
      id: "4",
      imgUrl: 'assets/images/Butwal.jpg',
      city: 'Butwal',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      isFavourite: false,
    ),
    Place(
      id: "5",
      imgUrl: 'assets/images/annapurna.jpg',
      city: 'Annapurna Base Camp',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      isFavourite: false,
    ),
    Place(
      id: "6",
      imgUrl: 'assets/images/pokhara.jpg',
      city: 'Pokhara',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      isFavourite: false,
    ),
    Place(
      id: "7",
      imgUrl: 'assets/images/sagarmatha.jpg',
      city: 'Sagarmatha National Park',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      isFavourite: false,
    ),
  ];

  List<Place> get places {
    return [..._places];
  }

  List<Place> get favourites {
    return _places.where((place) => place.isFavourite).toList();
  }

  Place findById(String id) {
    return _places.firstWhere((place) => place.id == id);
  }
}
