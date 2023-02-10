import 'package:flutter/material.dart';

class BC_ESC_Photos extends StatefulWidget {
  const BC_ESC_Photos({Key? key}) : super(key: key);

  @override
  State<BC_ESC_Photos> createState() => _BC_ESC_PhotosState();
}

class _BC_ESC_PhotosState extends State<BC_ESC_Photos> {
  bool A = true;
  bool B = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Boshundara ESC Images",
        ),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                if (B == true) {
                  B = false;
                } else {
                  B = true;
                }
              });
            },
            child: const Icon(Icons.apps_rounded),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      body: (B)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_4.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_5.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_10.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_3.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_6.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_7.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/esc/Screenshot_10.png")
                    ),
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/esc/Screenshot_1.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "assets/esc/Screenshot_2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "assets/esc/Screenshot_3.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset("assets/esc/Screenshot_4.png",
                          fit: BoxFit.fill),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset("assets/esc/Screenshot_5.png",
                          fit: BoxFit.fill),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset("assets/esc/Screenshot_6.png",
                          fit: BoxFit.fill),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset("assets/esc/Screenshot_7.png",
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
