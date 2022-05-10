import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  final String image;
  Preview({required this.image});
  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 19),
                  child: Text("WHITE-FACE.",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              Padding(
                  padding: EdgeInsets.only(top: 50, right: 19),
                  child: BackButton(color: Color.fromARGB(255, 0, 0, 0))),
            ],
          ),
          const Divider(
            height: 10,
            color: Colors.transparent,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 19),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/c2/7f/4c/c27f4ce431471238a8ac08de609a3e24.jpg"),
                  radius: 15,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Nugraha Jati Utama",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          const Divider(
            height: 20,
            color: Colors.transparent,
          ),
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.8175,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.9875,
                          height: MediaQuery.of(context).size.height * 0.8175,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              widget.image,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 15,
                                        right: 15),
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "Ending in",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                              Text(
                                                "Highest bid",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "06h 23m 15s",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "\$6,826",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                width: 145,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                30))),
                                                child: const Text(
                                                  "Purchase",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: 145,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 253, 199, 49),
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                30))),
                                                child: const Text(
                                                  "Place a bid",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                ))
                          ])
                    ],
                  )),
            ],
          )
        ],
      ),
    ));
  }
}
