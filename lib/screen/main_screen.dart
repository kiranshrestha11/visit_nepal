import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visit_nepal/screen/booked_hotel_screen.dart';
import 'package:visit_nepal/widgets/app_drawer.dart';
import 'package:visit_nepal/widgets/destinations_list.dart';

enum FilterOptions { Favourites, All }

class MainScreen extends StatefulWidget {
  static const routeName = "/main_screen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool showFavourites = false;
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Destinations',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              PopupMenuButton(
                onSelected: (FilterOptions selectedOption) {
                  setState(() {
                    if (selectedOption == FilterOptions.Favourites) {
                      showFavourites = true;
                    } else {
                      showFavourites = false;
                    }
                  });
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 40,
                ),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Show Favourites'),
                    value: FilterOptions.Favourites,
                  ),
                  PopupMenuItem(
                    child: Text('Show All'),
                    value: FilterOptions.All,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      drawer: AppDrawer(),
      body: DestinationList(showFavourites),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
                color: Colors.white,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, BookedHotelScreen.routeName);
                },
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
              ),
              title: SizedBox.shrink())
        ],
      ),
    );
  }
}
