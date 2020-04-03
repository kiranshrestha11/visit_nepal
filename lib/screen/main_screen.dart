import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visit_nepal/model/places_model.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/main_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Places You Can Visit',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 650,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: places.length,
                    itemBuilder: (BuildContext context, int index) {
                      Place place = places[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(28.0),
                            bottomLeft: Radius.circular(28.0)),
                        child: Container(
                          padding: null,
                          margin: EdgeInsets.all(2.0),
                          height: 200,
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image(
                                image: AssetImage(place.imgUrl),
                                fit: BoxFit.fill,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.place,
                                          color: Colors.redAccent,
                                        ),
                                        Text(
                                          place.city,
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
                                    width: 356,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
