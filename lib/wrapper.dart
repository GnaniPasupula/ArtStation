import 'package:flutter/cupertino.dart';
import 'package:portfolio/Home.dart';
import 'package:portfolio/Models/user.dart';
import 'package:portfolio/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
