import 'package:flutter/material.dart';
import 'constants.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final reviewList = [
    {
      'image': 'images/user_1.jpg',
      'name': 'Robert Junior',
      'rating': '5',
      'review': 'Very good.',
      'time': 'Yesterday 10:33 PM'
    },
    {
      'image': 'images/user_2.jpg',
      'name': 'Mark Lynn',
      'rating': '4',
      'review': 'Awesome Quality.',
      'time': 'Yesterday 9:12 PM'
    },
    {
      'image': 'images/user_3.jpg',
      'name': 'Ellison Perry',
      'rating': '3',
      'review': 'Super.',
      'time': 'Yesterday 7:35 PM'
    },
    {
      'image': 'images/user_4.jpg',
      'name': 'Emma Watson',
      'rating': '5',
      'review': 'Good.',
      'time': 'Yesterday 6:58 PM'
    },
    {
      'image': 'images/user_5.jpg',
      'name': 'Shira Maxwell',
      'rating': '2',
      'review': 'Mind Blowing.',
      'time': 'Yesterday 4:35 PM'
    },
    {
      'image': 'images/user_6.jpg',
      'name': 'David Smith',
      'rating': '4',
      'review': 'Fabulous.',
      'time': 'Yesterday 2:51 PM'
    },
    {
      'image': 'images/user_7.jpg',
      'name': 'Bill Hussey',
      'rating': '1',
      'review': 'It\'s Good.',
      'time': 'Yesterday 10:33 AM'
    },
    {
      'image': 'images/user_8.jpg',
      'name': 'Peter James',
      'rating': '5',
      'review': 'Very nice.',
      'time': 'Yesterday 9:33 AM'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(physics: BouncingScrollPhysics(), children: <Widget>[
      SizedBox(height: 10.0),
      Container(
        padding: EdgeInsets.all(fixPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Rate', style: headingStyle),
            // 5 Star Rating Start
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '99+',
                  style: greyHeadingStyle,
                ),
                heightSpace,
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            // 5 Star Rating End
            // 4 Star Rating Start
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '56',
                  style: greyHeadingStyle,
                ),
                heightSpace,
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            // 4 Star Rating End
            // 3 Star Rating Start
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '45',
                  style: greyHeadingStyle,
                ),
                heightSpace,
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            // 3 Star Rating End
            // 2 Star Rating Start
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '12',
                  style: greyHeadingStyle,
                ),
                heightSpace,
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            // 1 Star Rating End
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '5',
                  style: greyHeadingStyle,
                ),
                heightSpace,
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                    size: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: fixPadding / 2),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18.0,
                  ),
                ),
              ],
            ),
            // 1 Star Rating End
          ],
        ),
      ),
      Container(
        height: 1.5,
        width: width - 20.0,
        margin: EdgeInsets.only(right: fixPadding, left: fixPadding),
        color: Colors.grey[300],
      ),
      heightSpace,
      ColumnBuilder(
        itemCount: reviewList.length,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        itemBuilder: (context, index) {
          final item = reviewList[index];
          return Container(
            width: width,
            height: 100.0,
            margin: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(item['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    widthSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item['name']!,
                          style: headingStyle,
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.orange, size: 18.0),
                            Icon(Icons.star,
                                color: (item['rating'] == '1')
                                    ? Colors.grey[300]
                                    : Colors.orange,
                                size: 18.0),
                            Icon(Icons.star,
                                color: (item['rating'] == '1' ||
                                        item['rating'] == '2')
                                    ? Colors.grey[300]
                                    : Colors.orange,
                                size: 18.0),
                            Icon(Icons.star,
                                color: (item['rating'] == '1' ||
                                        item['rating'] == '2' ||
                                        item['rating'] == '3')
                                    ? Colors.grey[300]
                                    : Colors.orange,
                                size: 18.0),
                            Icon(Icons.star,
                                color: (item['rating'] == '1' ||
                                        item['rating'] == '2' ||
                                        item['rating'] == '3' ||
                                        item['rating'] == '4')
                                    ? Colors.grey[300]
                                    : Colors.orange,
                                size: 18.0),
                          ],
                        ),
                        heightSpace,
                        Text(
                          item['review']!,
                          style: listItemTitleStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  item['time']!,
                  style: listItemSubTitleStyle,
                ),
              ],
            ),
          );
        },
      )
    ]);
  }
}

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;

  final VerticalDirection verticalDirection;
  final int itemCount;

  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment: MainAxisAlignment.start,
    this.mainAxisSize: MainAxisSize.max,
    this.crossAxisAlignment: CrossAxisAlignment.center,
    this.verticalDirection: VerticalDirection.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: new List.generate(
          this.itemCount, (index) => this.itemBuilder(context, index)).toList(),
    );
  }
}
