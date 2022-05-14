import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  String art_title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 19),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75 / 2,
                      height: MediaQuery.of(context).size.height * 0.15 / 3,
                      child: TextFormField(
                        validator: (val) =>
                            val!.isEmpty ? "Enter Title Name" : null,
                        onChanged: (value) {
                          setState(() {
                            art_title = value;
                          });
                        },
                        cursorColor: const Color.fromARGB(255, 255, 175, 203),
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          border: InputBorder.none,
                          hintText: "Title Name",
                        ),
                        style: const TextStyle(
                            fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                  const Padding(
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
                    height: MediaQuery.of(context).size.height - 158 - 100,
                    width: MediaQuery.of(context).size.width * 0.99,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 175, 203),
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
