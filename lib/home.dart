import 'package:animated_cards_listview/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CustomColors colors = CustomColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.bgColor,
      appBar: AppBar(
        title: Text('animated cards'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hello world',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
