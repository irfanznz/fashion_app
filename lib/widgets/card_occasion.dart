import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../models/occasion.dart';

class OccasionCard extends StatelessWidget {
  OccasionCard({
    required this.screenSize,
    required this.occasion,
    required this.type,
  });

  final Size screenSize;
  final String occasion;
  final int type;

  @override
  Widget build(BuildContext context) {
    Color overlayColor = Colors.black.withOpacity(0);
    Color checkmarkColor = Colors.white.withOpacity(0);

    return Consumer<Occasion>(
      builder: (context, occasions, child) {
        String? selectedOccasion =
            Provider.of<Occasion>(context, listen: false).getOccasion(type);

        if (selectedOccasion != null) {
          if (selectedOccasion != occasion) {
            overlayColor = Colors.black.withOpacity(0);
            checkmarkColor = Colors.white.withOpacity(0);
          } else {
            overlayColor = Colors.black.withOpacity(0.5);
            checkmarkColor = Colors.white;
          }
        }

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
              Provider.of<Occasion>(
                context,
                listen: false,
              ).changeOccasion(occasion, type);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Image.asset(
                    'assets/images/occasion_${occasion.toLowerCase()}.jpg',
                    width: screenSize.width * 0.28,
                    height: screenSize.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    occasion,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 20.0,
                          color: Colors.black.withOpacity(.5),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Container(
                    color: overlayColor,
                    width: screenSize.width * 0.28,
                    height: screenSize.width * 0.4,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.check,
                  size: screenSize.width * 0.15,
                  color: checkmarkColor,
                ),
              ],
            ),
          ),
        );
      },
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
