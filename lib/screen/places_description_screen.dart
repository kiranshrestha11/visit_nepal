import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/place_provider.dart';
import 'package:visit_nepal/widgets/hotel_list.dart';

class PlaceDescriptionScreen extends StatelessWidget {
  static const routeName = "/place_description_screen";

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedPlace = Provider.of<Places>(context).findById(id);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          selectedPlace.city,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    selectedPlace.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                tag: selectedPlace.imgUrl,
              ),
              Positioned(
                bottom: 0,
                child: Text(
                  selectedPlace.city,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.black54),
                ),
              ),
            ],
          ),
          Text(
            selectedPlace.description,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Container(
            child: Text(
              "Hotels",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomRight: Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.only(top: 13, bottom: 13, left: 28, right: 28),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 280,
            child: HotelList(),
          ),
        ],
      ),
    );
  }
}
