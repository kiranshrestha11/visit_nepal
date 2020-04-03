import 'package:flutter/material.dart';
import 'package:visit_nepal/screen/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent[200],
        accentColor: Colors.deepPurple,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Quicksand',
      ),
      home: MainScreen(),
      routes: {
        MainScreen.routeName: (ctx) => MainScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => MainScreen());
      },
    );
  }
}
