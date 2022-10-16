import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../models/occasion.dart';
import '../screens/apparel.dart';

class ApparelCard2 extends StatelessWidget {
  ApparelCard2({
    required this.screenSize,
    required this.name,
  });

  final Size screenSize;
  final String name;

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/clothes/${name}.jpg';

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(1, 1),
            blurRadius: 10,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                imagePath,
                width: screenSize.width * 0.42,
                height: screenSize.width * 0.55,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget spacedDown() {
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.025,
        ),
        this,
      ],
    );
  }

  Widget spacedUp() {
    return Column(
      children: [
        this,
        SizedBox(
          height: screenSize.height * 0.025,
        ),
      ],
    );
  }
}
