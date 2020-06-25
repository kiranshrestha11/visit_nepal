import 'package:flutter/material.dart';
import 'package:visit_nepal/screen/booked_hotel_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('kiranstha1679@gmail.com'),
            accountName: Text("Kiran Kumar Shrestha"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Destinations'),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.hotel),
            title: Text('Booked Hotels'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, BookedHotelScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Settings'),
            onTap: () {
              //Navigator.pushReplacementNamed(context, OrderScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
