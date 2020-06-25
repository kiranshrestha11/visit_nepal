import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/model/place_model.dart';
import 'package:visit_nepal/screen/places_description_screen.dart';

class DestinationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedPlace = Provider.of<Place>(context);
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        margin: EdgeInsets.all(1.5),
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PlaceDescriptionScreen.routeName,
                  arguments: selectedPlace.id,
                );
              },
              child: Hero(
                child: Image(
                  image: AssetImage(selectedPlace.imgUrl),
                  fit: BoxFit.fill,
                ),
                tag: selectedPlace.imgUrl,
              ),
            ),
            Positioned(
              right: 5,
              top: 3,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).canvasColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.2, 5.0),
                          blurRadius: 7.0)
                    ]),
                margin: EdgeInsets.all(3),
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    selectedPlace.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red[300],
                    size: 29.0,
                  ),
                  onPressed: () {
                    selectedPlace.toggleIsFavourite();
                  },
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Colors.red[200],
                      ),
                      Text(
                        selectedPlace.city,
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                  color: Colors.black54,
                  width: 340,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
