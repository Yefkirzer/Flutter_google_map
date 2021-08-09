import 'package:flutter/material.dart';
import 'package:profile/Location_with_button/loc_marker_pressed.dart';
import 'package:profile/qr/qr_scanner.dart';

import 'Location_with_button/loc_with_but.dart';
import 'Location_with_button/loc_with_carousel.dart';
import 'Location_with_button/loc_with_tabbar.dart';
import 'company_profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("Profile page"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                }),
            RaisedButton(
                child: Text("Location with Button"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocWithButn()));
                }),
            RaisedButton(
                child: Text("Location with TabBar"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocWithTab()));
                }),
            RaisedButton(
                child: Text("Location with Carouselr"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocWithCar()));
                }),
            RaisedButton(
                child: Text("Location with Marker move"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocMarker()));
                }),
            RaisedButton(
                child: Text("QR Scanner with Url"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrScanner()));
                }),
          ],
        ),
      ),
    );
  }
}
