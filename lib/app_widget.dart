import 'package:flutter/material.dart';

import 'modules/auth/view/auth_check.dart';
import 'modules/home/view/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/auth',
      routes: {
        '/auth': (_) => AuthCheck(),
        '/home': (_) => HomePage(),
      },
    );
  }
}
