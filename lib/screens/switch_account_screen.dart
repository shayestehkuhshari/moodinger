import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/main_screen.dart';
import 'package:smooth_corner/smooth_corner.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1C1F2E),
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pattern 2.png'),
            repeat: ImageRepeat.repeat,
            opacity: 0.2,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'images/switch_account_background.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 265,
                    child: SmoothClipRRect(
                      smoothness: 0.6,
                      borderRadius: BorderRadius.circular(40),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 300,
                          width: 295,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              SmoothClipRRect(
                                smoothness: 0.6,
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('images/profile1.png'),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('Shiiintech',
                                  style: Theme.of(context).textTheme.headline4),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((BuildContext context) =>
                                            MainScreen()),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'GB',
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'switch account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GB',
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? / ',
                    style: TextStyle(
                        fontFamily: 'GB',
                        color: Colors.grey[700],
                        fontSize: 16),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontFamily: 'GB', color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
