import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<String> art_images = [
  "https://arthive.net/res/media/img/orig/article/643/7567087@2x.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Untitled_%28First_Abstract_Watercolor%29_by_Wassily_Kandinsky.jpg/300px-Untitled_%28First_Abstract_Watercolor%29_by_Wassily_Kandinsky.jpg",
  "https://d1dzh206jt2san.cloudfront.net/posts-images/743X483/351_1576232059zsWY6.jpg",
  "https://media.tate.org.uk/aztate-prd-ew-dg-wgtail-st1-ctr-data/images/.width-340_zas0QP5.jpg"
];

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
