import 'package:brh_fashion_app/widgets/card_occasion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
              child: Text(
                'Good morning, Heisen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
              child: Text(
                'What\'s today\'s occasion?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
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
                  ),
                  SizedBox(
                    width: screenSize.width * 0.025,
                  ),
                  OccasionCard(
                    screenSize: screenSize,
                    occasion: 'Sport',
                  ),
                  SizedBox(
                    width: screenSize.width * 0.025,
                  ),
                  OccasionCard(
                    screenSize: screenSize,
                    occasion: 'Date',
                  ),
                  SizedBox(
                    width: screenSize.width * 0.025,
                  ),
                  OccasionCard(
                    screenSize: screenSize,
                    occasion: 'Travel',
                  ),
                  SizedBox(
                    width: screenSize.width * 0.025,
                  ),
                  OccasionCard(
                    screenSize: screenSize,
                    occasion: 'Formal',
                  ),
                  SizedBox(
                    width: screenSize.width * 0.025,
                  ),
                  OccasionCard(
                    screenSize: screenSize,
                    occasion: 'City',
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
