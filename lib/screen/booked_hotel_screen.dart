import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/booked_hotels.dart' show BookedHotels;
import 'package:visit_nepal/widgets/app_drawer.dart';
import 'package:visit_nepal/widgets/booked_hotel_item.dart';

class BookedHotelScreen extends StatelessWidget {
  static const routeName = '/booked_hotel_screen';
  @override
  Widget build(BuildContext context) {
    final bookedHotel = Provider.of<BookedHotels>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Booked Hotels'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, index) => BookedHotelItem(
          id: bookedHotel.orders.values.toList()[index].id,
          name: bookedHotel.orders.values.toList()[index].name,
          address: bookedHotel.orders.values.toList()[index].address,
          price: bookedHotel.orders.values.toList()[index].price,
          hotelId: bookedHotel.orders.keys.toList()[index],
        ),
        itemCount: bookedHotel.itemCount,
      ),
    );
  }
}
