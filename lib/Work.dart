import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: const Center(
                child: Text(
                    "Only Search,Profile and image preview(Tap on image) works"))));
  }
}
