import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Text("Login",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.height * 0.05,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 255, 212, 227),
                                  ),
                                  child: const Icon(
                                    Icons.person_outline,
                                    color: Color.fromARGB(255, 255, 175, 203),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.75 /
                                      2,
                                  height: MediaQuery.of(context).size.height *
                                      0.15 /
                                      3,
                                  child: TextFormField(
                                    cursorColor: const Color.fromARGB(
                                        255, 255, 175, 203),
                                    decoration: const InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                      border: InputBorder.none,
                                      hintText: "gnani@email.com",
                                    ),
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(height: 10, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.height * 0.05,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 253, 199, 49),
                                  ),
                                  child: const Icon(
                                    Icons.lock_outline,
                                    color: Color.fromARGB(255, 253, 225, 75),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75 -
                                          78,
                                  height: MediaQuery.of(context).size.height *
                                      0.15 /
                                      3,
                                  child: TextFormField(
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                    cursorColor:
                                        const Color.fromARGB(255, 253, 225, 75),
                                    decoration: const InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15, color: Colors.grey),
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
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.2375 / 2 -
                              25,
                          right:
                              MediaQuery.of(context).size.width * 0.2375 / 2 -
                                  25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Forgot Password?",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                          Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.75 / 2,
                              height:
                                  MediaQuery.of(context).size.height * 0.15 / 3,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 253, 199, 49),
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: TextButton(
                                onPressed: () async {
                                  dynamic result =
                                      await _authService.signInAnon();

                                  if (result == null) {
                                    print("error signing in");
                                  } else {
                                    print('Signed in');
                                    print(result);
                                  }
                                },
                                child: const Text(
                                  "Log in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign up",
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
