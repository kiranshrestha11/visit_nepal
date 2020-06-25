import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visit_nepal/provider/booked_hotels.dart';
import 'package:visit_nepal/provider/hotel_provider.dart';

class HotelDetailScreen extends StatefulWidget {
  static const routeName = "/hotel_detail_screen";

  @override
  _HotelDetailScreenState createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  PageController pageController;

  //imageList
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTex8fb3eg7U-5NogvVm2djlG73aLf609jkb5v4w_a6n0dhJFC7&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNgZ3TfBgEenYFmI50XNBEbFZLMBrFqM5k3Z3hfE2U7pglUMY9&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRY9aSbvOwCfkq-SeGXDyghRYvDUmKgO1idzBbSCvGYZp3wnaG2&usqp=CAU',
    'https://www.biggerbolderbaking.com/wp-content/uploads/2019/07/15-Minute-Pizza-WS-Thumbnail.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfmQmoyCZJn5S9WDvc83lJgEt59_pZe45-hWnEtx4TOAlIS6Fo&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8AIHXSiHBfCj7GPpPa93ZnEtV2t8wilJ_USjrEIDBqw2CZUjz&usqp=CAU',
  ];
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.6);
  }

  Text _buildStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final selectedHotel =
        Provider.of<Hotels>(context, listen: false).findById(id);
    final bookedHotel = Provider.of<BookedHotels>(context, listen: false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Hero(
                  tag: selectedHotel.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(selectedHotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35.0,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 34.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.sort,
                            size: 35.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 25.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      selectedHotel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          selectedHotel.address,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: _buildStars(selectedHotel.rating),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 13, right: 13, top: 5),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '\Npr ${selectedHotel.price}',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          selectedHotel.startTimes[0],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          selectedHotel.startTimes[1],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 143),
            child: Text(
              'Meals',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  decorationThickness: 2,
                  color: Colors.black38,
                  decoration: TextDecoration.underline,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            child: PageView.builder(
                controller: pageController,
                itemCount: images.length,
                itemBuilder: (context, position) {
                  return imageSlider(position);
                }),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FlatButton(
                onPressed: () {
                  bookedHotel.bookHotel(selectedHotel.id, selectedHotel.name,
                      selectedHotel.price, selectedHotel.address);
                },
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  imageSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: Container(
            height: Curves.easeInOut.transform(value) * 190,
            width: Curves.easeInOut.transform(value) * 220,
            child: widget,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0.0, 3.0), blurRadius: 7.0)
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23.0),
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
