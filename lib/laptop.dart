
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/laptop/pad_mini.dart';


class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {

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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pad_Mini()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://image01.realme.net/general/20230206/1675674240652.png.webp",
                      height: 110.0,
                      width: 110.0,
                    fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: new RichText(
                            text: TextSpan(
                                children:[
                                  TextSpan(
                                    text: '        Tk.73,999\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 13.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'realme Book Prime',
                                    style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ]
                            ))
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pad_Mini()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://image01.realme.net/general/20220719/1658212838401.png.webp",
                      height: 110.0,
                      width: 110.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new RichText(
                            text: TextSpan(
                                children:[
                                  TextSpan(
                                    text: '     Tk.21,349\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 13.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'realme Pad Mini',
                                    style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ]
                            ))
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  new Image.network("https://image01.realme.net/general/20211108/1636350930003.jpg.webp",
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: ' Tk.21,999\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 13.3,
                                  ),
                                ),
                                TextSpan(
                                  text: 'realme Pad',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
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
                  new Image.network("https://image01.realme.net/general/20210825/1629858166413.png.webp",
                    height: 110.0,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: new RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(
                                  text: 'Tk. 59,999 / Tk. 73,999\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 13.3,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme Book',
                                  style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
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

