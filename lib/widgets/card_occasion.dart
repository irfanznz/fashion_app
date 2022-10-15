import 'package:flutter/material.dart';

class OccasionCard extends StatelessWidget {
  OccasionCard({required this.screenSize, required this.occasion});

  final Size screenSize;
  final String occasion;

  @override
  Widget build(BuildContext context) {
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
        onTap: () {
          // TODO occasion onclick
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                'assets/images/occasion_${occasion.toLowerCase()}.jpg',
                width: screenSize.width * 0.3,
                height: screenSize.width * 0.35,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                occasion,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
