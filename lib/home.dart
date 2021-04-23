import 'package:animated_cards_listview/colors.dart';
import 'package:animated_cards_listview/components/card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CustomColors colors = CustomColors();
  ScrollController controller = ScrollController();
  List images = [
    "assets/images/scap1.jpeg",
    "assets/images/scap2.png",
    "assets/images/scap3.jpg",
    "assets/images/scap4.jpg",
    "assets/images/scap5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.bgColor,
      appBar: AppBar(
        title: Text('animated cards'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return LocationCards(imgUrl: images[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
