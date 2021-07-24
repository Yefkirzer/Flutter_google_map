import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocWithButn extends StatefulWidget {
  const LocWithButn({Key? key}) : super(key: key);

  @override
  _LocWithButnState createState() => _LocWithButnState();
}

class _LocWithButnState extends State<LocWithButn> {
  // double lat = 9.0335;
  // double long = 38.7637;
  Set<Marker> _markers = {};
  GoogleMapController? _controller;
  void _onmapCreated(controller) {
    setState(() {
      _controller = controller;
      _markers.add(Marker(
          draggable: true,
          markerId: MarkerId("id-2"),
          position: LatLng(9.0335, 38.7637)));
    });
  }

  void addmarker(double la, double lo) {
    setState(() {
      _markers.add(Marker(
          draggable: true,
          markerId: MarkerId("id-2"),
          position: LatLng(la, lo)));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("location"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: size.height - 130,
                width: size.width,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(9.0335, 38.7637),
                    zoom: 15,
                  ),
                  onMapCreated: _onmapCreated,
                  markers: _markers,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RaisedButton(
                        onPressed: () {
                          movetoX(8.8708, 38.8234);
                          addmarker(8.8708, 8.8708);
                        },
                        child: Text("go")),
                    SizedBox(
                      width: 4,
                    ),
                    RaisedButton(
                        onPressed: () {
                          movetoX(9.0205, 38.8234);
                          addmarker(9.0205, 38.8234);
                        },
                        child: Text("meg")),
                    SizedBox(
                      width: 4,
                    ),
                    RaisedButton(
                        onPressed: () {
                          movetoX(8.9568, 38.7638);
                          addmarker(8.9568, 38.7638);
                        },
                        child: Text("Saris")),
                    SizedBox(
                      width: 4,
                    ),
                    RaisedButton(
                        onPressed: () {
                          movetoX(8.8708, 38.8234);
                        },
                        child: Text("go")),
                    SizedBox(
                      width: 4,
                    ),
                    RaisedButton(
                        onPressed: () {
                          movetoX(8.8708, 38.8234);
                        },
                        child: Text("go")),
                    SizedBox(
                      width: 4,
                    ),
                    RaisedButton(
                        onPressed: () {
                          movetoX(8.8708, 38.8234);
                        },
                        child: Text("go")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  movetoX(double lati, double longt) {
    _controller!.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lati, longt),
      zoom: 15,
    )));
    // setState(() {
    //   _markers.add(Marker(
    //       // draggable: true,
    //       markerId: MarkerId("id-2"),
    //       position: LatLng(lati, longt)));
    // });
  }
}
