import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/online_warranty_check.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WarrantyCheck extends StatefulWidget {
  const WarrantyCheck({Key? key}) : super(key: key);

  @override
  State<WarrantyCheck> createState() => _WarrantyCheckState();
}

class _WarrantyCheckState extends State<WarrantyCheck> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Welcome To Online Support"),
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
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("কিভাবে ফোনের আইএমআই বের করবেন?"),
                      content: Text('রিয়েলমি ফোনের আইএমআই বের করতে হলে প্রথমে \n'
                          'মোবাইলের [সেটিংস] > [এবাউট ফোন] > [Status] > [IMEI 1] অথবা\n'
                          'ডায়াল করুন মোবাইলের *#06# '),
                      actions: [
                        TextButton(
                          child: Text('বাতিল'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('ওকে'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );

                },


                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://media.wired.co.uk/photos/606d9f42d9c09fc47d4c1630/1:1/w_2000,h_2000,c_limit/realme.jpg",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Get Device Info",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Online_Warranty_check()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://static.vecteezy.com/system/resources/thumbnails/011/654/825/small/warranty-icon-vector-graphic-free-png.png",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Online Warranty Check",
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
