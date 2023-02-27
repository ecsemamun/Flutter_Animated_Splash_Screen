import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/email_us.dart';
import 'package:flutter_animated_splash_screen/message_us.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineSupport extends StatefulWidget {
  const OnlineSupport({Key? key}) : super(key: key);

  @override
  State<OnlineSupport> createState() => _OnlineSupportState();
}

class _OnlineSupportState extends State<OnlineSupport> {


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Welcome To Online Support"),
        backgroundColor: Colors.yellow,
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
          onTap: () async{
              if (!await launch('tel:+8809610555555')) throw 'Could not launch';
          },
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              new Image.network("https://www.clipartmax.com/png/middle/207-2074118_call-us-call-icon-png.png",
                height: 130.0,
                width: 130.0,
                fit: BoxFit.cover,
              ),
              new SizedBox(height: 3.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Call US",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Email_US()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://w7.pngwing.com/pngs/344/400/png-transparent-envelope-email-forwarding-computer-icons-contact-us-miscellaneous-angle-rectangle.png",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Email US",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MessageUS()),);
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://www.facebook.com/images/help/fbhc_redesign/card_images/messaging.png",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Facebook Messenger",
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
                onTap: () async{
                  if (!await launch('sms:+8809610555555')) throw 'Could not launch';
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    new Image.network("https://static.vecteezy.com/system/resources/thumbnails/005/133/033/small/chat-message-mobile-notification-phone-smartphone-icon-free-vector.jpg",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 3.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text("Phone Message",
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
