import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/all_esc.dart';

class ESC_Info extends StatefulWidget {
  const ESC_Info({Key? key}) : super(key: key);

  @override
  State<ESC_Info> createState() => _ESC_InfoState();
}

class _ESC_InfoState extends State<ESC_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("ESC & CP"),
        centerTitle: true,
      ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => All_Esc()),
                  );
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("assets/esc_.png",
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
                        "Exclusive Service Center",
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
