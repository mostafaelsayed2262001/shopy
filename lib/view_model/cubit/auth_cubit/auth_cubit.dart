import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:shop/data/repository/authentication_repositry.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthenticationRepositry authenticationRepositry = AuthenticationRepositry();
  final GlobalKey<FormState> logInformKey = GlobalKey<FormState>();
  TextEditingController logInEmailController = TextEditingController();
  TextEditingController logInPasswordController = TextEditingController();
  final authInstance = FirebaseAuth.instance;
  UserCredential? userCredential;

  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);

  Future<void> logInAuthentication(BuildContext context) async {
    // Set language for Firebase emails
    await authInstance.setLanguageCode('en'); // Replace 'en' with the desired locale

    emit(AuthLoading()); // Indicate that authentication is in progress

    try {
      // Attempt to sign in with email and password
      userCredential = await authInstance.signInWithEmailAndPassword(
        email: logInEmailController.text.trim(),
        password: logInPasswordController.text.trim(),
      );

      // Authentication successful
      emit(AuthLogedIn());
      if(state is AuthLogedIn){
        MainCubit.get(context).getAllPruducts();
        MainCubit.get(context).getAllCategories();
        context.go('/homescreen');
      }
      print("Token is: $userCredential");

      // Show a success message (optional)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Logged in successfully!', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
      );
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase exceptions
      String errorMessage;
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password provided for that user.';
      } else {
        errorMessage = 'An error occurred. Please try again.';
      }

      // Display the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
      );

      emit(AuthFaild()); // Indicate authentication failure
    } catch (e) {
      // Handle unexpected errors
      print("Unexpected error: $e");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('An unexpected error occurred.', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
      );

      emit(AuthFaild()); // Indicate authentication failure
    }
    emit(AuthFaild());
  }

  SignInAuthentication() {
    emit(AuthLoading());
    authenticationRepositry
        .signInAuthentication(emailAddress: "emailAddress", password: "")
        .then(
      (value) {
        print("Sign in value: $value");
        emit(AuthLogedIn());
      },
    );
  }
}
