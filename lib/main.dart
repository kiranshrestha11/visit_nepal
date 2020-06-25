import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/booked_hotels.dart';
import 'package:visit_nepal/provider/hotel_provider.dart';
import 'package:visit_nepal/provider/place_provider.dart';
import 'package:visit_nepal/screen/booked_hotel_screen.dart';
import 'package:visit_nepal/screen/hotel_detail_screen.dart';
import 'package:visit_nepal/screen/main_screen.dart';
import 'package:visit_nepal/screen/places_description_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Places()),
        ChangeNotifierProvider.value(value: Hotels()),
        ChangeNotifierProvider.value(value: BookedHotels()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green[200],
          accentColor: Colors.white,
          canvasColor: Colors.white,
          fontFamily: 'Quicksand',
        ),
        initialRoute: "/",
        routes: {
          "/": (ctx) => MainScreen(),
          PlaceDescriptionScreen.routeName: (ctx) => PlaceDescriptionScreen(),
          HotelDetailScreen.routeName: (ctx) => HotelDetailScreen(),
          BookedHotelScreen.routeName: (ctx) => BookedHotelScreen(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (ctx) => MainScreen(),
          );
        },
      ),
    );
  }
}
