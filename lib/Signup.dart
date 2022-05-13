import 'package:flutter/material.dart';
import 'package:portfolio/auth.dart';

class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({required this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.network(
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ad69c8ad-949d-4bd6-9d97-3eb44f1d7076/d335edz-dc48824b-546c-4925-9d12-3ca58c1d92d8.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FkNjljOGFkLTk0OWQtNGJkNi05ZDk3LTNlYjQ0ZjFkNzA3NlwvZDMzNWVkei1kYzQ4ODI0Yi01NDZjLTQ5MjUtOWQxMi0zY2E1OGMxZDkyZDguanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.vq0X-Ayx1TNxUKVSOz3nMrMi-9NPVs-j3WsSfLTPxh8",
                    fit: BoxFit.fill,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 253, 199, 49),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  width: MediaQuery.of(context).size.width * 0.9875,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))
                            ]),
                        const SizedBox(
                          height: 40,
                        ),
                        Form(
                          key: _formKey,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
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
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 255, 212, 227),
                                            ),
                                            child: const Icon(
                                              Icons.person_outline,
                                              color: Color.fromARGB(
                                                  255, 255, 175, 203),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75 /
                                                2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15 /
                                                3,
                                            child: TextFormField(
                                              validator: (val) => val!.isEmpty
                                                  ? "Enter an email"
                                                  : null,
                                              onChanged: (value) {
                                                setState(() {
                                                  email = value;
                                                });
                                              },
                                              cursorColor: const Color.fromARGB(
                                                  255, 255, 175, 203),
                                              decoration: const InputDecoration(
                                                hintStyle: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                border: InputBorder.none,
                                                hintText: "gnani@email.com",
                                              ),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                          height: 10, color: Colors.grey),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 253, 199, 49),
                                            ),
                                            child: const Icon(
                                              Icons.lock_outline,
                                              color: Color.fromARGB(
                                                  255, 253, 225, 75),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.75 -
                                                78,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15 /
                                                3,
                                            child: TextFormField(
                                              validator: (val) => val!.length <
                                                      6
                                                  ? "Enter a password of 6+ chars"
                                                  : null,
                                              obscureText: true,
                                              onChanged: (value) {
                                                setState(() {
                                                  password = value;
                                                });
                                              },
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                              cursorColor: const Color.fromARGB(
                                                  255, 253, 225, 75),
                                              decoration: const InputDecoration(
                                                hintStyle: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                border: InputBorder.none,
                                                hintText: "*********",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width *
                                      0.2375 /
                                      2 -
                                  25,
                              right: MediaQuery.of(context).size.width *
                                      0.2375 /
                                      2 -
                                  25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    0.75 /
                                    2,
                                height: MediaQuery.of(context).size.height *
                                    0.15 /
                                    3,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 253, 199, 49),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: TextButton(
                                  onPressed: () async {
                                    //dynamic result = await _auth.SignUpAnon();

                                    // if (result == null) {
                                    //   print("error SignUpg in");
                                    // } else {
                                    //   print('Signed in');
                                    //   print(result.uid);
                                    // }
                                    if (_formKey.currentState!.validate()) {
                                      // print(email);
                                      // print(password);
                                      dynamic result = await _auth
                                          .registerWithEmailAndPassword(
                                              email, password);
                                      if (result == null) {
                                        setState(() {
                                          error = "Please enter a valid email";
                                        });
                                      }
                                    }
                                  },
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Have an account?",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            TextButton(
                                onPressed: () {
                                  widget.toggleView();
                                },
                                child: const Text(
                                  "Sign in",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 255, 212, 227),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ))
                          ],
                        )
                      ]),
                ),
              ],
            )
          ]),
        ));
  }
}
