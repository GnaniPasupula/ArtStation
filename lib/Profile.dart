import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Preview.dart';

List<String> art_images = [
  "https://images.saatchiart.com/saatchi/833929/art/8855790/7919158-BGDDFYXM-6.jpg",
  "https://www.artmajeur.com/medias/standard/p/o/pooviartgallery/artwork/10107421_il-570xn-1029384179-fasv.jpg",
  "https://cdn.shopify.com/s/files/1/0054/2887/1268/files/Wassily_Kandinsky_Improvisation_31_Sea_Battle_1024x1024.jpg?v=1589816835",
  "https://images.saatchiart.com/saatchi/850336/art/7858298/6926142-UJBKHPPG-7.jpg"
];

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const IconData hexagon =
      IconData(0xf0517, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 50, left: 19, right: 19),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(),
                    PopupMenuButton<String>(onSelected: (value) {
                      print(value);
                    }, itemBuilder: ((contexts) {
                      return [
                        const PopupMenuItem(
                          value: "Settings",
                          child: Text('Settings'),
                        )
                      ];
                    }))
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Stack(alignment: Alignment(0.9, -1), children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/a3/be/17/a3be177eacedf5546ca26d01d8e7d961.png"),
                      radius: 60,
                      backgroundColor: Colors.yellow,
                    ),
                    Icon(
                      hexagon,
                      color: Colors.greenAccent,
                      size: 40,
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  ])
                ]),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Nugraha Jati Utama",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )
                    ]),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "@Nugruji27",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 130,
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 212, 227),
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        "0x1h78......f5h9",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Hello world, I am Inug from Indonesia."),
                        Divider(
                          height: 5,
                          color: Colors.transparent,
                        ),
                        Text("I am creating the beautiful stuff.")
                      ],
                    )
                  ],
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      constraints:
                          const BoxConstraints(minWidth: 75, minHeight: 45),
                      fillColor: Color.fromARGB(255, 212, 238, 255),
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Icon(FontAwesomeIcons.twitter,
                          color: Colors.black, size: 17.0),
                    ),
                    RawMaterialButton(
                      constraints:
                          const BoxConstraints(minWidth: 75, minHeight: 45),
                      fillColor: Color.fromARGB(255, 212, 249, 255),
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Icon(FontAwesomeIcons.instagram,
                          color: Colors.black, size: 18.0),
                    ),
                    RawMaterialButton(
                      constraints:
                          const BoxConstraints(minWidth: 75, minHeight: 45),
                      fillColor: Color.fromARGB(255, 255, 212, 227),
                      elevation: 0,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Icon(FontAwesomeIcons.dribbble,
                          color: Colors.black, size: 17.0),
                    )
                  ],
                ),
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
                                    child: Image.network(
                                      art_images[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ));
                        })))
              ],
            )));
  }
}
