import 'package:brh_fashion_app/screens/recs.dart';
import 'package:flutter/material.dart';
import 'package:brh_fashion_app/models/occasion.dart';
import 'package:brh_fashion_app/widgets/card_occasion.dart';
import 'package:brh_fashion_app/widgets/slider_temperature.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Consumer<Occasion>(
      builder: (context, occasions, child) {
        String? occasion =
            Provider.of<Occasion>(context, listen: false).getOccasion(0);
        String? mood =
            Provider.of<Occasion>(context, listen: false).getOccasion(1);

        Color buttonColor = occasion != null && mood != null
            ? Colors.black
            : Colors.grey.shade500;

        return SafeArea(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
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
                    padding: EdgeInsets.fromLTRB(16, 24, 0, 8),
                    child: Text(
                      'What\'s today\'s occasion?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    dragStartBehavior: DragStartBehavior.start,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Office',
                          type: 0,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Sport',
                          type: 0,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Date',
                          type: 0,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Travel',
                          type: 0,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Formal',
                          type: 0,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'City',
                          type: 0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
                    child: Text(
                      'How warm is it where you\'re going?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  TemperatureSlider(),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                    child: Text(
                      'How are we feeling today?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    dragStartBehavior: DragStartBehavior.start,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Loud',
                          type: 1,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Bright',
                          type: 1,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Lowkey',
                          type: 1,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.025,
                        ),
                        OccasionCard(
                          screenSize: screenSize,
                          occasion: 'Easy',
                          type: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  if (occasion != null && mood != null) {
                    Navigator.pushNamed(context, RecsScreen.id);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: screenSize.height * 0.05,
                  width: screenSize.width * 0.34,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(16))),
                  child: Text(
                    'I\'m ready',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
