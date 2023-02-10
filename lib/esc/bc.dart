import 'package:flutter/material.dart';
import 'package:flutter_animated_splash_screen/esc/bc_esc_photos.dart';
import 'package:flutter_animated_splash_screen/esc/bc_google_map.dart';
import 'package:url_launcher/url_launcher.dart';

class Boshundara_ESC extends StatefulWidget {
  const Boshundara_ESC({Key? key}) : super(key: key);

  @override
  State<Boshundara_ESC> createState() => _Boshundara_ESCState();
}

class _Boshundara_ESCState extends State<Boshundara_ESC> {

  void launchWhatsapp({@required number, @required message}) async{
    String url = "whatsapp://send?phone=$number&text=&message";
    await canLaunch(url) ? launch(url) : print("Can't open whatsapp");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("Welcome To Boshudara ESC"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                children: [
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () async{
                      if (!await launch('tel:+8801309026465')) throw 'Could not launch';

                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,


                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(

                          color: Colors.amber
                          ,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 65,
                        width: 290,
                        alignment: Alignment.center,
                        child:  const Text(
                          "Call Service Center Number",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PT-Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                          launchWhatsapp(number: "+8801757828572", message: "Hello");
                    },
                    style: ElevatedButton.styleFrom(

                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(

                          color: Colors.amber
                          ,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 65,
                        width: 290,
                        alignment: Alignment.center,
                        child:  const Text(
                          "Chat With Whatsapp",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PT-Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BC_ESC_Photos()),);
                    },
                    style: ElevatedButton.styleFrom(

                        padding: EdgeInsets.zero,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(

                          color: Colors.amber
                          ,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 65,
                        width: 290,
                        alignment: Alignment.center,
                        child:  const Text(
                          "Check Service Center Photos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PT-Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      MapUtils.openMap(23.165696848207016, 89.21370929487712);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))
                    ),
                    child: Ink(
                      decoration: BoxDecoration(

                          color: Colors.amber
                          ,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 65,
                        width: 290,
                        alignment: Alignment.center,
                        child:  const Text(
                          "Google Maps Location",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PT-Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),
                  Container(
                    child: Card(
                        elevation: 5,
                        color: Colors.grey.shade200,
                        child: Column(
                          children: [
                            Text(
                              'realme ESC Boshundara City',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Service Hours:',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "10:30am-07:30pm\n       Wednesday\n12:00am-07:30 pm",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                "Holiday: Tuesday",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Address:",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Shop-97-100, Block-C, Level-5,\nBashundhara Shopping Complex, \n             Panthopath, Dhaka",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Mobile:+8801309-026465 ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  )

                ],


          ),
        ),
      ),

    );
  }
}