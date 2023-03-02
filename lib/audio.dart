import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/smart_wearable/watch_2_pro.dart';

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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Watch_2_Pro()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      "https://image01.realme.net/general/20220415/1649992956251.jpg.webp",
                      height: 110.0,
                      width: 110.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(
                      height: 3.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: '             Tk.4,949\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Brick Blutooth Speaker',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ]
                          )),
                    ),
                  ],
                ),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '           Tk.3,499\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme Buds Wirless 2',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '          Tk.549\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme Buds 2 Neo',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.1,549\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'Pocket BT Speaker',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.2,199\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'Buds Wirless 2 Neo',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.2,199\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme Buds Q2',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.2,199\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme Buds Air 2',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.2,199\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'realme Buds Classic',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RichText(
                        text: TextSpan(
                            children:[
                              TextSpan(
                                text: '        Tk.2,199\n',
                                style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: 'Buds Air 2 Neo',
                                style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]
                        )),
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
