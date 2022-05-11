import 'package:flutter/material.dart';
import 'package:portfolio/Profile.dart';
import 'package:portfolio/Search.dart';
import 'package:portfolio/SignIn.dart';
import 'Work.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

Widget customBottomNavigationBar(BuildContext context) {
  return Container(
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
    height: 100,
    width: MediaQuery.of(context).size.width,
    child: const TabBar(
      tabs: [
        Tab(
            icon: Icon(
          Icons.home_outlined,
          size: 30.0,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.search_outlined,
          size: 30.0,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.add_circle_outline_outlined,
          size: 50.0,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.favorite_outline,
          size: 30.0,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.person_outline,
          size: 30.0,
          color: Colors.black,
        )),
      ],
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
    ),
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              Work(),
              Search(),
              Work(),
              Work(),
              Profile(),
            ],
          ),
          bottomNavigationBar: customBottomNavigationBar(context),
          backgroundColor: Color.fromARGB(255, 253, 199, 49),
        ),
      ),
    );
  }
}
