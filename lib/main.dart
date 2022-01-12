import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'firebase_options.dart';
import 'modules/auth/controller/login_controller.dart';
import 'modules/home/controller/statitics_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => StatiticsRepository(),
      ),
      ChangeNotifierProvider(create: (_) => AuthController())
    ],
    child: MyApp(),
  ));
}
