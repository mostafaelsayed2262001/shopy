import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/textUtils.dart';

class AuthenticationRepositry {
  final authInstance = FirebaseAuth.instance;
   UserCredential? userCredential;


  Future<UserCredential?> loginAuthenticaion(
      {required String emailAddress, required String password}) async {

    try {
      print("email is 0000000000000000000000${emailAddress + password}");
      userCredential = await authInstance.signInWithEmailAndPassword(
          email: emailAddress, password: password);

      print("token is ${userCredential?.credential}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger(child: TextUtils(text: "No user found for that email"));


      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger(child: TextUtils(text: "Wrong password provided for that user"));

      }
      ScaffoldMessenger(child: TextUtils(text: "${e.toString()}"));

    }
    return userCredential;
  }

  signInAuthentication(
      {required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
