import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c11_2021.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c21y.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c25s.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c25y.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c30.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c31.dart';
import 'package:flutter_animated_splash_screen/all_mobile/c35.dart';
import 'package:flutter_animated_splash_screen/all_mobile/gt_master.dart';
import 'all_mobile/c33.dart';
import 'all_mobile/gt_neo2.dart';




class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}


class _MobileState extends State<Mobile> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      body: new GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GtNeo2()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/gtneo2.png",
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
                                  text: 'Tk.34,990 +VAT Applicable\n',
                                  style: TextStyle(
                                    color: Colors.red, fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '         realme GT Neo2',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GtMaster()));
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/gtmaster.png",
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
                            text: 'Tk.34,990 +VAT Applicable\n',
                            style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                          TextSpan(
                            text: 'realme GT Master Edition',
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
                 Navigator.push(context, MaterialPageRoute(builder: (context) => C33()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/c33.png",
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
                                    text: 'Tk.12,999/14,999 + VAT Applicable\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 9.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '              realme C33',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C30()),
                  )
                  ;
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/C30.png",
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
                                    text: 'Tk.9,999 + VAT Applicable\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 12.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '             realme C30',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C35()),
                  )
                  ;
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/c35.png",
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
                                    text: 'Tk.16,999/18,999 + VAT Applicable\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 9.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '              realme C35',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C31()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/c31.png",
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
                                    text: 'Tk.14,999+VAT Applicable\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 12.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '             realme C31',
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
          ), new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C25Y()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/c25y.png",
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
                                    text: 'Tk.14,499 + VAT Applicable\n',
                                    style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold,
                                      fontSize: 10.3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '        realme C25Y',
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
          ), new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C21Y()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      "https://image01.realme.net/general/20210922/1632290826817.png.webp",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("realme C21Y",
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
          ), new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C11_2021()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      "https://image01.realme.net/general/20210922/1632290767705.png.webp",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("realme C11 2021",
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
          ), new Container(
            child: new Card(
              elevation: 10.0,
              margin: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => C25s()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      "https://image01.realme.net/general/20210625/1624613408503.png.webp",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("realme C25s",
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
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20220720/1658308516649.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 9 Pro+",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20220721/1658403884507.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 9 Pro",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20220516/1652689615382.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 9",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20220210/1644477319980.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 9i",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210709/1625799146172.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 8 5G",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210426/1619404146906.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 8",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20210402/1617336522575.png.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 8 Pro",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602671923340.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 7 Pro",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602671981220.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 7i",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602671923340.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 7 Pro",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602672476088.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 6",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602672479957.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 6i",
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
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.network(
                    "https://image01.realme.net/general/20201014/1602672532909.jpg.webp",
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                  new SizedBox(height: 3.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("realme 5i",
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
