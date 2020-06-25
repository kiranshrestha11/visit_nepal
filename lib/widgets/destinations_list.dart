import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/place_provider.dart';
import 'package:visit_nepal/widgets/destination_item.dart';

class DestinationList extends StatelessWidget {
  final bool showFavourites;
  DestinationList(this.showFavourites);
  @override
  Widget build(BuildContext context) {
    final loadedplaces = Provider.of<Places>(context);
    final places =
        showFavourites ? loadedplaces.favourites : loadedplaces.places;
    return ListView.builder(
      padding: EdgeInsets.only(left: 5.0, right: 2.0, top: 5.0),
      scrollDirection: Axis.vertical,
      itemCount: places.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: places[index],
        child: DestinationItem(),
      ),
    );
  }
}
