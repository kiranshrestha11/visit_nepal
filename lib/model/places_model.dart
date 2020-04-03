import 'package:visit_nepal/model/activity_model.dart';

class Place {
  String imgUrl;
  String city;
  String description;
  List<Activity> activities;

  Place({
    this.imgUrl,
    this.city,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/Kathmandu.jpg',
    name: 'Kathmandu',
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/pokhara.jpg',
    name: 'Pokhara',
    rating: 5,
    price: 30,
  ),
];

List<Place> places = [
  Place(
    imgUrl: 'assets/images/Kathmandu.jpg',
    city: 'Kathmandu',
    description:
        'Kathmandu, the city of peace, lives true to this description. The city is charming, busy, bustling, serene, alive and asleep - all at once. The capital of Nepal, Kathmandu is the most accessible city in the country - it is Nepal\'s only metropolitan city as well.',
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/chitwanNP.jpg',
    city: 'Chitwan National Park',
    description:
        'The Chitwan National Park (CNP) is a world heritage property, and it also contains a Ramsar Site – Beeshazari Tal in its buffer zone. The CNP has a history of over 3 decades in park management and a rich experience in resolving conflicts between the park and the people.',
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/Mustang.jpg',
    city: 'Mustang',
    description:
        "Experiencing the Mustang trek is one of the main highlights of Nepal’s Adventure treks. The ancient fortified city (also called Lo Manthang) claims to have the best trekking routes. A city belonging to Tibet once upon a time holds great historical significance.",
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/Butwal.jpg',
    city: 'Butwal',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/annapurna.jpg',
    city: 'Annapurna Base Camp',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/pokhara.jpg',
    city: 'Pokhara',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Place(
    imgUrl: 'assets/images/sagarmatha.jpg',
    city: 'Sagarmatha National Park',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
