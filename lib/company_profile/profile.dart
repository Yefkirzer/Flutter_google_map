import 'package:flutter/material.dart';
import 'package:profile/company_profile/review.dart';
import 'package:profile/company_profile/location.dart';
import 'package:profile/company_profile/discription.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool favourite = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFF2647C),
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Color(0xFFF2647C),
                  expandedHeight: 230,
                  pinned: true,
                  elevation: 0.0,
                  actions: <Widget>[
                    IconButton(
                      icon: (favourite)
                          ? Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                            ),
                      onPressed: () {
                        setState(() {
                          favourite = !favourite;
                        });
                        (favourite)
                            ? ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(
                                content: Text('Added to Favourite'),
                              ))
                            : ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(
                                content: Text('Remove from Favourite'),
                              ));
                      },
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Container(
                            height: 180,
                            width: width,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/restaurant_3.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Container(
                            height: 180.0,
                            width: width,
                            color: Colors.black.withOpacity(0.6),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Bar 61 Restaurant',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 10.0,
                                    left: 10.0,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                        size: 18.0,
                                      ),
                                      SizedBox(width: 2.0),
                                      Text(
                                        '76A England',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.star,
                                          color: Colors.lime, size: 18.0),
                                      SizedBox(width: 2.0),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    indicatorColor: Color(0xFFCA445D),
                    indicatorPadding: EdgeInsets.only(right: 15.0, left: 15.0),
                    tabs: [
                      Tab(text: 'Discription'),
                      Tab(text: 'Review'),
                      Tab(text: 'Location'),
                    ],
                  ),
                ),
              ];
            },
            body: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                color: Color(0xFFF4F4F4),
              ),
              child: TabBarView(
                children: [
                  Discription(),
                  Review(),
                  Location(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
