import 'package:flutter/material.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      body: new GridView.count(
        crossAxisCount: 2,
        children: <Widget> [
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  new Image.network("https://image01.realme.net/general/20220425/1650871908261.png.webp",
                    height: 115.0,
                    width: 115.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: '          Tk.6,559\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' realme Watch 2 Pro',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ]
                          ))
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  new Image.network("https://image01.realme.net/general/20220425/1650871938176.png.webp",
                    height: 115.0,
                    width: 115.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: '         Tk.4,699\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '     realme Watch 2',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ]
                          ))
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  new Image.network("https://image01.realme.net/general/20220425/1650871955962.png.webp",
                    height: 115.0,
                    width: 115.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: '         Tk.3,849\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '     realme Band 2',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ]
                          ))
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