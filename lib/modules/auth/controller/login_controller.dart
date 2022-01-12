import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UserCredential? userCredential;

  auth(String email, String password) async {
    userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    notifyListeners();
  }
}
