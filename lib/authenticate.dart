import 'package:flutter/cupertino.dart';
import 'package:portfolio/SignIn.dart';
import 'package:portfolio/Signup.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignin = true;
  void toggleView() {
    setState(() => showSignin = !showSignin);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return SignIn(toggleView: toggleView);
    } else {
      return SignUp(toggleView: toggleView);
    }
  }
}
