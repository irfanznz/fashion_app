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

class HomeScreen extends StatefulWidget {
  static const id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    HomeTab(),
    ExploreTab(),
    ShopTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookOpen),
              label: 'For you',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.magnifyingGlass),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bagShopping),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              label: 'Profile',
            ),
          ],
        ),
        body: tabs[_currentIndex],
      ),
    );
  }
}
