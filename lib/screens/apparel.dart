import 'package:brh_fashion_app/models/occasion.dart';
import 'package:brh_fashion_app/screens/home.dart';
import 'package:brh_fashion_app/screens/message.dart';
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

class ApparelScreen extends StatefulWidget {
  static const id = 'ApparelScreen';
  String image;

  ApparelScreen(this.image);

  @override
  State<ApparelScreen> createState() => _ApparelScreenState();
}

class _ApparelScreenState extends State<ApparelScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Consumer<Occasion>(
      builder: (context, occasions, child) {
        String occasion =
            Provider.of<Occasion>(context, listen: false).getOccasion(0)!;
        String mood =
            Provider.of<Occasion>(context, listen: false).getOccasion(1)!;

        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.65,
                child: FittedBox(
                  fit: BoxFit.cover,
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    widget.image,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  children: [TagButton('Streetwear'), TagButton('Fall')],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(16, 0, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose this outfit?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Inter',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.popUntil(
                        //     context, ModalRoute.withName(HomeScreen.id));
                        Navigator.pushNamed(context, MessageScreen.id);
                      },
                      child: Text(
                        'Yes',
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
                              return Colors.grey;
                            }
                          },
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'No',
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
                              return Colors.grey;
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(16, 24, 18, 16),
                child: RichText(
                  text: TextSpan(
                    text: 'We\'ve picked for you some ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: occasion.toLowerCase(),
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      TextSpan(
                          text:
                              ' attire inspirations. Let us know if you\'re missing any apparel from the fit you like.'),
                    ],
                  ),
                ),
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.fromLTRB(16, 24, 0, 16),
              //   child: RichText(
              //     text: TextSpan(
              //       text: 'Your ',
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 20,
              //         fontWeight: FontWeight.w400,
              //         fontFamily: 'Inter',
              //       ),
              //       children: <TextSpan>[
              //         TextSpan(
              //             text: occasion.toLowerCase(),
              //             style: TextStyle(fontWeight: FontWeight.w700)),
              //         TextSpan(text: ' fits. '),
              //         TextSpan(
              //             text: occasions.getTemperature().toString(),
              //             style: TextStyle(fontWeight: FontWeight.w700)),
              //         TextSpan(text: '°C. Feeling '),
              //         TextSpan(
              //             text: mood.toLowerCase(),
              //             style: TextStyle(fontWeight: FontWeight.w700)),
              //         TextSpan(text: '.'),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}

class TagButton extends StatelessWidget {
  String tag;
  TagButton(this.tag);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: TextButton(
        onPressed: () {},
        child: Text(
          tag,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
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
                return Colors.grey.shade900;
              } else {
                return Colors.grey.shade700;
              }
            },
          ),
        ),
      ),
    );
  }
}
