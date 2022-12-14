import 'package:brh_fashion_app/screens/apparel.dart';
import 'package:brh_fashion_app/screens/message.dart';
import 'package:brh_fashion_app/screens/recs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/occasion.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Occasion>(
      create: (context) => Occasion(),
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          RecsScreen.id: (context) => RecsScreen(),
          MessageScreen.id: (context) => MessageScreen(),
          ApparelScreen.id: (context) => ApparelScreen(
              ModalRoute.of(context)?.settings.arguments as String),
        },
      ),
    );
  }
}
