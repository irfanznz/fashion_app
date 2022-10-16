import 'package:brh_fashion_app/models/occasion.dart';
import 'package:brh_fashion_app/screens/home.dart';
import 'package:brh_fashion_app/screens/tab_explore.dart';
import 'package:brh_fashion_app/screens/tab_home.dart';
import 'package:brh_fashion_app/screens/tab_profile.dart';
import 'package:brh_fashion_app/screens/tab_shop.dart';
import 'package:brh_fashion_app/widgets/card_occasion.dart';
import 'package:brh_fashion_app/widgets/slider_temperature.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../widgets/card_apparel1.dart';

class MessageScreen extends StatefulWidget {
  static const id = 'MessageScreen';

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.png',
                height: screenSize.height * 0.03,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 00.35,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Excellent choice. \nGo out there and ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'seize the day',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: '.'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 00.01,
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.popUntil(
                      //     context, ModalRoute.withName(HomeScreen.id));
                      Navigator.popUntil(
                          context, ModalRoute.withName(HomeScreen.id));
                    },
                    child: Text(
                      'Let\'s go.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      overlayColor: MaterialStateProperty.all(Colors.grey),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (state) {
                          if (state.contains(MaterialState.pressed)) {
                            return Colors.grey.shade800;
                          } else {
                            return Colors.grey.shade500;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
