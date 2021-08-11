import 'package:flutter/material.dart';
import 'package:travel_japan/detailspage.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({Key key}) : super(key: key);

  @override
  _DashbordPageState createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.pink[700]),
                    child: Center(
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.grey[900]),
                    child: Center(
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 150.0,
              child: ListView(
                children: [
                  _buildListItem(
                      'assets/japan.jpg', 'Japan', 'Explore this land '),
                  _buildListItem(
                      'assets/canada.jpg', 'Canada', 'Explore this land ')
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  _buildListItem(imageUrl, title, info) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop)),
            ),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    info,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => DetailsPage(
                                    imagePath: imageUrl,
                                    title: title,
                                  )));
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Explore Now",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[700],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
