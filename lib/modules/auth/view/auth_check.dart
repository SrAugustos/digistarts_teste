import 'package:digistarts_teste/modules/auth/controller/login_controller.dart';
import 'package:digistarts_teste/modules/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AuthController>(context);
    if (controller.userCredential != null) {
      return HomePage();
    } else {
      return LoginPage();
    }
  }
}
