import 'package:flutter/material.dart';

class Keep_Notes_Two extends StatefulWidget {
  const Keep_Notes_Two({Key? key}) : super(key: key);

  @override
  State<Keep_Notes_Two> createState() => _Keep_Notes_TwoState();
}

class _Keep_Notes_TwoState extends State<Keep_Notes_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Keep Notes"),
      ),
    );
  }
}
