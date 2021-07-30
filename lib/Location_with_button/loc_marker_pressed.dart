import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocMarker extends StatefulWidget {
  const LocMarker({Key? key}) : super(key: key);

  @override
  _LocMarkerState createState() => _LocMarkerState();
}

class _LocMarkerState extends State<LocMarker> {
  int _current = 0;
  int i = 0;
  late List<companyprofifle> profile = [];
  List<Marker> _markers = [];
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    companyprofifle kaldis = new companyprofifle(
        name: "Kaldis",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 8.8708,
        lon: 38.8234);

    companyprofifle kaldisI = new companyprofifle(
        name: "KaldisI",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 9.0335,
        lon: 38.7637);
    companyprofifle kaldisII = new companyprofifle(
        name: "kaldisII",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 8.9568,
        lon: 38.7638);
    companyprofifle Mus = new companyprofifle(
        name: "mus",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 9.038333,
        lon: 38.761944);
    profile.add(kaldisI);
    profile.add(kaldisII);
    profile.add(kaldis);
    profile.add(Mus);
  }

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

  List<Marker> buildMarkers() {
    var markers = profile.map((e) {
      int index = profile.indexOf(e);
      return Marker(
          onTap: () {
            carouselController.jumpToPage(index);
          },
          draggable: true,
          markerId: MarkerId(index.toString()),
          position: LatLng(e.lat, e.lon));
    }).toList();
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    setState(() {
      _markers = buildMarkers();
    });
    print(_markers.length);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                height: size.height,
                width: size.width,
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(9.0335, 38.7637),
                    zoom: 15,
                  ),
                  onMapCreated: _onmapCreated,
                  markers: _markers.map((e) => e).toSet(),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              child: CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: profile.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  i = itemIndex;
                  return Container(
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
                                  height: size.height / 10,
                                  width: size.width / 5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              profile[itemIndex].imgurl),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      profile[itemIndex].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                    Text(
                                      profile[itemIndex].disc,
                                      style: TextStyle(),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  );
                },
                options: CarouselOptions(
                    initialPage: 0,
                    height: 100,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.7,
                    onPageChanged: (index, _) {
                      _current = index;
                      LatLng latlng =
                          LatLng(profile[_current].lat, profile[_current].lon);
                      movetoX(latlng.latitude, latlng.longitude);
                    }),
              ),
            ),
            // ListView.builder(
            //     itemCount: profile.length,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         child: Card(
            //             elevation: 10,
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(15.0),
            //             ),
            //             child: Padding(
            //               padding: const EdgeInsets.all(8),
            //               child: Center(
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                       height: size.height / 10,
            //                       width: size.width / 5,
            //                       decoration: BoxDecoration(
            //                           image: DecorationImage(
            //                               image:
            //                                   AssetImage(profile[index].imgurl),
            //                               fit: BoxFit.cover)),
            //                     ),
            //                     SizedBox(width: 10),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: [
            //                         Text(
            //                           profile[index].name,
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.bold,
            //                               fontSize: 30),
            //                         ),
            //                         Text(
            //                           profile[index].disc,
            //                           style: TextStyle(),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             )),
            //       );
            //     })
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
    // _markers.clear();
    // setState(() {
    //   // _controller = controller;
    //   _markers.add(Marker(
    //       onTap: () {
    //         profile[0];
    //       },
    //       draggable: true,
    //       markerId: MarkerId("id-2"),
    //       position: LatLng(lati, longt)));
    // });
  }
}

class companyprofifle {
  String name;
  String disc;
  String imgurl;
  double lon;
  double lat;
  companyprofifle(
      {required this.name,
      required this.disc,
      required this.imgurl,
      required this.lat,
      required this.lon});
}
