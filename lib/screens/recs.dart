import 'package:brh_fashion_app/models/occasion.dart';
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

class RecsScreen extends StatefulWidget {
  static const id = 'RecsScreen';

  @override
  State<RecsScreen> createState() => _RecsScreenState();
}

class _RecsScreenState extends State<RecsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Consumer<Occasion>(
      builder: (context, occasions, child) {
        String occasion =
            Provider.of<Occasion>(context, listen: false).getOccasion(0)!;
        String mood =
            Provider.of<Occasion>(context, listen: false).getOccasion(1)!;
        String temperature =
            Provider.of<Occasion>(context, listen: false).getTemperature() < 13
                ? 'cold'
                : 'warm';

        return Scaffold(
          body: SafeArea(
            child: Column(
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
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
                  child: Text(
                    'Good morning, Heisen.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(16, 24, 0, 16),
                  child: RichText(
                    text: TextSpan(
                      text: 'Your ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: occasion.toLowerCase(),
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: ' fits. '),
                        TextSpan(
                            text: occasions.getTemperature().toString(),
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: '°C. Feeling '),
                        TextSpan(
                            text: mood.toLowerCase(),
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: '.'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ApparelCard1(
                                name: '1',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedUp(),
                              ApparelCard1(
                                name: '3',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedDown(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ApparelCard1(
                                name: '4',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedUp(),
                              ApparelCard1(
                                name: '2',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedDown(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ApparelCard1(
                                name: '8',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedUp(),
                              ApparelCard1(
                                name: '5',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedDown(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ApparelCard1(
                                name: '6',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedUp(),
                              ApparelCard1(
                                name: '7',
                                screenSize: screenSize,
                                occasion: occasion,
                                temperature: temperature,
                              ).spacedDown(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
