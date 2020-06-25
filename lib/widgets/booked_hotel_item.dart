import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/booked_hotels.dart';

class BookedHotelItem extends StatelessWidget {
  final String id;
  final String name;
  final String address;
  final double price;
  final String hotelId;

  BookedHotelItem({
    this.id,
    this.name,
    this.address,
    this.price,
    this.hotelId,
  });

  @override
  Widget build(BuildContext context) {
    final bookedhotel = Provider.of<BookedHotels>(context, listen: false);

    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        bookedhotel.removeItem(hotelId);
      },
      background: Container(
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text(
              name,
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(address),
            trailing: Text('Npr ${price}'),
          ),
        ),
      ),
    );
  }
}
