import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/view/screens/auth_screens/log_in_screen.dart';
import 'package:shop/view/screens/auth_screens/sign_up_screen.dart';

class BoardScreen extends StatelessWidget {
  final Color kDarkBlueColor =  HexColor("#0D5C89");

  BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(

        finishButtonText: 'Log In',
      onFinish: () {
        context.go("/logInScreen");


      },
      finishButtonTextStyle: GoogleFonts.almarai(fontSize: 20,color: Colors.white),
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: GoogleFonts.almarai(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        "Log In",
        style: GoogleFonts.almarai(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LogInScreen(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      centerBackground: true,
      headerBackgroundColor: kDarkBlueColor,
      pageBackgroundColor: Colors.white,
      background: [
        SizedBox(
          height: 400,
          child: Image.asset(
            'assets/firstBoard.png',
            height: 200,

          ),
        ),
        SizedBox( height: 400,
          child: Image.asset(
            'assets/secondBoard.png',
            height: 250,

          ),
        ),
        SizedBox(height: 400,
          child: Image.asset(
            'assets/thirdBoard.png',
            height: 250,

          ),
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Buying online has never been easier',
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Enjoy discounts up to 80%',
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  color: kDarkBlueColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Multiple and fast payment methods',
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ],

    );
  }
}
