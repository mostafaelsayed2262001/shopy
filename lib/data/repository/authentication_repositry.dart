
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepositry{


  Future<UserCredential?> loginAuthenticaion({required String emailAddress ,required String password })async{
    try {
      return  await FirebaseAuth.instance.signInWithEmailAndPassword(
           email: emailAddress,
           password: password
       );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
  }
    return null;
  }
  signInAuthentication({required String emailAddress ,required String password })async{
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