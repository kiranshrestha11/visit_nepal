import 'package:flutter/cupertino.dart';
import 'package:visit_nepal/model/hotel_model.dart';

class Hotels with ChangeNotifier {
  List<Hotel> _hotels = [
    Hotel(
      id: '1',
      imageUrl: 'assets/images/hotel0.jpg',
      name: 'Hotel 0',
      address: 'Gaidakot',
      price: 1750,
      startTimes: ['5:00 am', '11:00 pm'],
      rating: 5,
      isAvailable: true,
    ),
    Hotel(
      id: '2',
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Hotel 1',
      address: 'Narayanghat',
      price: 3000,
      startTimes: ['5:30 am', '11:30 pm'],
      rating: 4,
      isAvailable: true,
    ),
    Hotel(
      id: '3',
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Hotel 2',
      address: 'sauraha',
      price: 5000,
      startTimes: ['4:00 am', '12:00pm'],
      rating: 3,
      isAvailable: false,
    ),
    Hotel(
      id: '4',
      imageUrl: 'assets/images/hotel3.jpg',
      name: 'Hotel 3',
      address: 'Sauraha',
      price: 2400,
      startTimes: ['5:00 am', '11:00 pm'],
      rating: 5,
      isAvailable: true,
    ),
    Hotel(
      id: '5',
      imageUrl: 'assets/images/hotel4.jpg',
      name: 'Hotel 4',
      address: 'Narayanghat',
      price: 2500,
      startTimes: ['5:00 am', '11:00 pm'],
      rating: 5,
      isAvailable: false,
    ),
    Hotel(
      id: '6',
      imageUrl: 'assets/images/hotel5.jpg',
      name: 'Hotel 5',
      address: 'Kathmandu ',
      price: 3400,
      startTimes: ['5:00 am', '11:00 pm'],
      rating: 4,
      isAvailable: true,
    ),
    Hotel(
      id: '7',
      imageUrl: 'assets/images/hotel6.jpg',
      name: 'Hotel 6',
      address: 'Kathmandu ',
      price: 4500,
      startTimes: ['5:00 am', '11:00 am'],
      rating: 5,
      isAvailable: true,
    ),
  ];

  List<Hotel> get hotels {
    return [..._hotels];
  }

  Hotel findById(String id) {
    return _hotels.firstWhere((place) => place.id == id);
  }
}
