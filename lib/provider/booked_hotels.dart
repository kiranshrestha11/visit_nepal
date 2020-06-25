import 'package:flutter/material.dart';

class BookedHotelItem {
  String id;
  String name;
  String address;
  double price;

  BookedHotelItem({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.price,
  });
}

class BookedHotels with ChangeNotifier {
  Map<String, BookedHotelItem> _orders = {};
  Map<String, BookedHotelItem> get orders {
    return {..._orders};
  }

  int get itemCount {
    return _orders == null ? 0 : _orders.length;
  }

  void removeItem(String hotelId) {
    _orders.remove(hotelId);
    notifyListeners();
  }

  void bookHotel(String hotelId, String name, double price, String address) {
    if (_orders.containsKey(hotelId)) {
      _orders.update(
          hotelId,
          (existingCartItem) => BookedHotelItem(
                id: existingCartItem.id,
                name: existingCartItem.name,
                address: existingCartItem.address,
                price: existingCartItem.price,
              ));
    } else {
      _orders.putIfAbsent(
          hotelId,
          () => BookedHotelItem(
                id: DateTime.now().toString(),
                name: name,
                price: price,
                address: address,
              ));
    }
    notifyListeners();
  }

  void clearCart() {
    _orders = {};
    notifyListeners();
  }
}
