import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Preview.dart';

List<String> art_images = [
  "https://arthive.net/res/media/img/orig/article/643/7567087@2x.jpg",
  "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/robot-boy-wyanne.jpg",
  "https://media.istockphoto.com/photos/elephant-art-print-picture-id1298152709?b=1&k=20&m=1298152709&s=170667a&w=0&h=gSzGBrACVbiv9YUW-znRuky1pjZjF9tgcPhbB1jNGOs=",
  "https://images.saatchiart.com/saatchi/1453973/art/7686584/6754818-HSC00002-32.jpg"
];

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 50, left: 19, right: 19),
            child: Column(
              children: [
                Row(
                  children: const [
                    BackButton(color: Color.fromARGB(255, 0, 0, 0)),
                    Text("Discover",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))
                  ],
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 60,
                  width: MediaQuery.of(context).size.width * 9 / 10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Search anything",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ]),
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 5, right: 5),
                    height: 360,
                    width: MediaQuery.of(context).size.width * 9 / 10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 9 / 10,
                          height: 360,
                          child: GestureDetector(
                            onTap: () {
                              print("Image opened");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Preview(
                                        image:
                                            "https://coloringhome.com/coloring/Kin/gLg/KingLg65T.png")),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                child: Image.network(
                                    "https://coloringhome.com/coloring/Kin/gLg/KingLg65T.png",
                                    fit: BoxFit.cover),
                              ),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 212, 227),
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: const Text(
                              "06h 23m 15s",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 20, left: 15, right: 15),
                                height: 100,
                                width: MediaQuery.of(context).size.width *
                                    8.6 /
                                    10,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Catstronout",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    "https://i.pinimg.com/originals/c2/7f/4c/c27f4ce431471238a8ac08de609a3e24.jpg"),
                                                radius: 15,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                "Nugraha Jati Utama",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "\$4,526.00",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 75,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 253, 199, 49),
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(30))),
                                            child: const Text(
                                              "Purchase",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              ))
                        ],
                      )
                    ])),
                Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1,
                        children: List.generate(4, (index) {
                          return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.black, width: 2),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  print("Image opened");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Preview(image: art_images[index])),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    child: Image.network(art_images[index],
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ));
                        })))
              ],
            )));
  }
}
