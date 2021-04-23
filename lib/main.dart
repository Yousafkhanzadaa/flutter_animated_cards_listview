import 'package:animated_cards_listview/constants/colors.dart';
import 'package:animated_cards_listview/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0.4),
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CustomColors colors = CustomColors();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: colors.primaryColor,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
