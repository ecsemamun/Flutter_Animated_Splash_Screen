import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20220415/1649992956251.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Brick Bluetooth Speaker",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20211206/1638756782839.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Buds Wirless 2",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210929/1632880076022.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Buds 2 Neo",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210831/1630379795389.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Pocket BT Spekaer",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210831/1630379824747.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Buds Wireless 2 Neo",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210720/1626749071979.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "realme Buds Q2",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210720/1626749192142.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "realme Buds Air 2",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210802/1627872521533.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "realme Buds Classic",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210720/1626749222845.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Buds Air 2 Neo",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
