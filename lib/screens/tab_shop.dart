import 'package:flutter/material.dart';

import '../widgets/card_apparel1.dart';

class ShopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
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
            padding: EdgeInsets.fromLTRB(16, 24, 0, 8),
            child: Text(
              'Add these to your wardrobe:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
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
                          name: 'denim1',
                          screenSize: screenSize,
                        ).spacedUp(),
                        ApparelCard1(
                          name: 'denim2',
                          screenSize: screenSize,
                        ).spacedDown(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ApparelCard1(
                          name: 'denim3',
                          screenSize: screenSize,
                        ).spacedUp(),
                        ApparelCard1(
                          name: 'denim4',
                          screenSize: screenSize,
                        ).spacedDown(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ApparelCard1(
                          name: 'denim5',
                          screenSize: screenSize,
                        ).spacedUp(),
                        ApparelCard1(
                          name: 'brown2',
                          screenSize: screenSize,
                        ).spacedDown(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ApparelCard1(
                          name: 'brown3',
                          screenSize: screenSize,
                        ).spacedUp(),
                        ApparelCard1(
                          name: 'brown4',
                          screenSize: screenSize,
                        ).spacedDown(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ApparelCard1(
                          name: 'brown1',
                          screenSize: screenSize,
                        ).spacedUp(),
                        ApparelCard1(
                          name: 'brown5',
                          screenSize: screenSize,
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
    );
  }
}
