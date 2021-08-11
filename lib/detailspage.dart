import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final imagePath, title;

  const DetailsPage({Key key, this.imagePath, this.title}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imagePath), fit: BoxFit.cover),
            ),
          ),
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFFFD4F99)),
                        child: Center(
                            child:
                                Icon(Icons.arrow_back, color: Colors.white))),
                  ),
                  Text(widget.title.toString().toUpperCase(),
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Color(0xFF353535)),
                    child: Center(
                      child: Icon(Icons.bookmark_border, color: Colors.white),
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 100.0,
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width - 15.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Trending Attractions',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              IconButton(
                                icon:
                                    Icon(Icons.more_vert, color: Colors.white),
                                onPressed: () {},
                              )
                            ],
                          )),
                      SizedBox(height: 10.0),
                      Stack(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Container(
                                height: 200.0,
                                width: 325.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage('assets/kyoto.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.6),
                                            BlendMode.darken))),
                              )),
                          Positioned(
                              top: 125.0,
                              left: 10.0,
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width - 60.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Kyoto tour',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          Text(
                                            'Three day tour around Kyoto',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                            color: Colors.white),
                                        child: Center(
                                          child: Icon(Icons.arrow_forward_ios,
                                              color: Color(0xFFFD4F99),
                                              size: 14.0),
                                        ),
                                      )
                                    ],
                                  )))
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                          width: MediaQuery.of(context).size.width - 15.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Weekly Highlights',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )),
                      SizedBox(height: 15.0),
                      Container(
                          height: 200.0,
                          width: MediaQuery.of(context).size.width - 20,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _buildListItem('assets/japan.jpg',
                                  'Takashi castle', 'TK200 - TK400'),
                              _buildListItem('assets/kyoto.jpg',
                                  'Heaven\'s gate', 'TK50 - TK150'),
                              _buildListItem('assets/canada.jpg', 'Miay gate',
                                  'TK300 - TK350')
                            ],
                          ))
                    ],
                  ))),
        ],
      ),
    );
  }

  _buildListItem(String imgPath, String placeName, String price) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(children: [
          Container(
              height: 175.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.darken)))),
          Positioned(
              top: 15.0,
              right: 15.0,
              child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white),
                  child: Center(
                      child: Icon(
                    Icons.bookmark_border,
                    color: Color(0xFFFD4F99),
                    size: 14.0,
                  )))),
          Positioned(
              top: 125.0,
              left: 15.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(placeName,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Colors.white)),
                  Text(price,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.white))
                ],
              ))
        ]));
  }
}
