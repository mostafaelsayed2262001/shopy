import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop/data/repository/authentication_repositry.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  AuthenticationRepositry authenticationRepositry=AuthenticationRepositry();
  final GlobalKey<FormState> logInformKey = GlobalKey<FormState>();
  TextEditingController logInEmailController=TextEditingController();
  TextEditingController logInPasswordController=TextEditingController();
  AuthCubit() : super(AuthInitial());
   get (context)=> BlocProvider.of<AuthCubit>(context);

   logInAuthentication(){
     emit(AuthLoading());
     authenticationRepositry.loginAuthenticaion(emailAddress: "emailAddress", password: "").then((value) {
       print("Log in value: $value");
       emit(AuthLogedIn());
     },);
   }
  SignInAuthentication(){
    emit(AuthLoading());
    authenticationRepositry.signInAuthentication(emailAddress: "emailAddress", password: "").then((value) {
      print("Sign in value: $value");
      emit(AuthLogedIn());
    },);
  }

}

