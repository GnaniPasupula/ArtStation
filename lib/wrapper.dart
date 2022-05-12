import 'package:flutter/cupertino.dart';
import 'package:portfolio/Home.dart';
import 'package:portfolio/Models/user.dart';
import 'package:portfolio/SignIn.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return SignIn();
    } else {
      return Home();
    }
  }
}
