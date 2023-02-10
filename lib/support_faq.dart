import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/after_sales.dart';

import 'faq.dart';

class Tips_AfterSales extends StatefulWidget {
  const Tips_AfterSales({Key? key}) : super(key: key);

  @override
  State<Tips_AfterSales> createState() => _Tips_AfterSalesState();
}

class _Tips_AfterSalesState extends State<Tips_AfterSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Welcome to realme Support"),
      ),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => FrequentyAskedQuestion()),
            );
          },
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              new Image.network("https://w7.pngwing.com/pngs/939/769/png-transparent-edison-bulb-illustration-incandescent-light-bulb-computer-icons-tips-angle-text-light-thumbnail.png",
                height: 130.0,
                width: 130.0,
                fit: BoxFit.cover,
              ),
              new SizedBox(height: 3.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Tips and Hacks",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AfterSalesTips()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://w7.pngwing.com/pngs/222/708/png-transparent-web-development-mobile-app-development-software-development-after-sale-web-design-mobile-app-development-web-application-thumbnail.png",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("After-Sales",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),

        ],

      ),
    );
  }
}
