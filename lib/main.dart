import 'package:animated_cards_listview/colors.dart';
import 'package:animated_cards_listview/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
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
