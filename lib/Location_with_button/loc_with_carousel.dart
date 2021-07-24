import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LocWithCar extends StatefulWidget {
  const LocWithCar({Key? key}) : super(key: key);

  @override
  _LocWithCarState createState() => _LocWithCarState();
}

class _LocWithCarState extends State<LocWithCar> {
  int _current = 0;
  late List<companyprofifle> profile = [];

  @override
  void initState() {
    companyprofifle kaldis = new companyprofifle(
        name: "ttt",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 8.8708,
        lon: 38.8234);

    companyprofifle kaldisI = new companyprofifle(
        name: "Kaldis",
        disc: "Bole Branch",
        imgurl: 'images/kaldis.jpg',
        lat: 8.8708,
        lon: 38.8234);
    profile.add(kaldisI);
    profile.add(kaldis);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: profile.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
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
                                      image:
                                          AssetImage(profile[itemIndex].imgurl),
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
              ),
              options: CarouselOptions(
                  initialPage: 0,
                  height: 180,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  onPageChanged: (index, _) {
                    _current = index;
                    print(_current);
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   height: 100,
            //   width: 100,
            //   color: Colors.red,
            // ),
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
