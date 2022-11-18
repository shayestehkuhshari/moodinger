import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/home_screen.dart';
import 'package:flutter_instagram_app/screens/login_page.dart';
import 'package:flutter_instagram_app/screens/login_screen.dart';
import 'package:flutter_instagram_app/screens/switch_account_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    goToSignPage(context);
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Stack(
        children: [
          _logo(),
          _Text(context),
        ],
      ),
    );
  }

  Widget _logo() {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/pattern 2.png'),
          repeat: ImageRepeat.repeat,
          opacity: 0.2,
        ),
      ),
      child: Center(
        child: Image.asset(
          'images/logo_splash.png',
          height: 77,
          width: 155,
        ),
      ),
    );
  }

  Widget _Text(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: double.infinity),
        Text(
          'From',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: 'GB',
          ),
        ),
        Text(
          'Expert Flutter',
          style: TextStyle(
            color: Color(0xff55B9F7),
            fontSize: 12,
            fontFamily: 'GB',
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Future<void> goToSignPage(BuildContext context) async {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SwitchAccountScreen(),
            ));
      },
    );
  }
}
