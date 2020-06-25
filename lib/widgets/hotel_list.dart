import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/hotel_provider.dart';
import 'package:visit_nepal/widgets/hotel_item.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedhotels = Provider.of<Hotels>(context).hotels;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: loadedhotels.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: loadedhotels[index],
        child: HotelItem(),
      ),
    );
  }
}
