import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocWithTab extends StatefulWidget {
  const LocWithTab({Key? key}) : super(key: key);

  @override
  _LocWithTabState createState() => _LocWithTabState();
}

class _LocWithTabState extends State<LocWithTab> {
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      width: size.width / 2.9,
                      height: size.height / 12,
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/products_3.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kaldis",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Bole branch",
                                        style: TextStyle(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    onTap: () {
                      movetoX(8.8708, 38.8234);
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Container(
                      width: size.width / 2.9,
                      height: size.height / 12,
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/products_3.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kaldis",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Bole branch",
                                        style: TextStyle(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    onTap: () {
                      movetoX(9.0205, 38.8234);
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Container(
                      width: size.width / 2.9,
                      height: size.height / 12,
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/products_3.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kaldis",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Bole branch",
                                        style: TextStyle(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    onTap: () {
                      movetoX(8.9568, 38.7638);
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Container(
                      width: size.width / 2,
                      height: size.height / 10,
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/products_3.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kaldis",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Bole branch",
                                        style: TextStyle(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    onTap: () {
                      movetoX(8.8708, 38.8234);
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: size.height - 81,
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
          ],
        ),
      ),
    );
  }

  movetoX(double lati, double longt) {
    _controller!.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lati, longt),
      zoom: 15,
    )));
    setState(() {
      _markers.add(Marker(
          // draggable: true,
          markerId: MarkerId("id-2"),
          position: LatLng(lati, longt)));
    });
  }
}
