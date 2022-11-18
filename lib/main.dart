import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/activity_screen.dart';
import 'package:flutter_instagram_app/screens/explore_screen.dart';
import 'package:flutter_instagram_app/screens/home_screen.dart';
import 'package:flutter_instagram_app/screens/login_screen.dart';
import 'package:flutter_instagram_app/screens/add_content_screen.dart';
import 'package:flutter_instagram_app/screens/main_screen.dart';
import 'package:flutter_instagram_app/screens/splash_screen.dart';
import 'package:flutter_instagram_app/screens/switch_account_screen.dart';
import 'package:flutter_instagram_app/screens/user_profile_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(129, 46),
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
