import 'package:animated_cards_listview/constants/colors.dart';
import 'package:animated_cards_listview/screens/card_preview.dart';
import 'package:flutter/material.dart';

class LocationCards extends StatefulWidget {
  LocationCards({Key key, this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  _LocationCardsState createState() => _LocationCardsState();
}

class _LocationCardsState extends State<LocationCards>
    with SingleTickerProviderStateMixin {
  CustomColors colors = CustomColors();
  Animation<double> opacityAnimation;
  Animation<double> sizeAnimation;
  Animation<double> marginAnimation;
  Animation<double> shadowAnimation;
  AnimationController controller;
  double opacity = 0.001;
  double width = 240;
  double margin = 0;
  double shadow = 0;
  bool active = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    opacityAnimation = Tween<double>(begin: 0.01, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          opacity = opacityAnimation.value;
        });
      });
    sizeAnimation = Tween<double>(begin: 240.0, end: 270.0).animate(controller)
      ..addListener(() {
        setState(() {
          width = sizeAnimation.value;
        });
      });
    marginAnimation = Tween<double>(begin: 0.0, end: 80.0).animate(controller)
      ..addListener(() {
        setState(() {
          margin = marginAnimation.value;
        });
      });
    shadowAnimation = Tween<double>(begin: 0.0, end: 6.0).animate(controller)
      ..addListener(() {
        setState(() {
          shadow = shadowAnimation.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Opacity(
          opacity: opacityAnimation.value,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 400),
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CardPreview(imgUrl: widget.imgUrl);
                  },
                ),
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => CardPreview(
              //       imgUrl: widget.imgUrl,
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 300,
              width: sizeAnimation.value,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'Of course Gilgit is heaven',
                    style: TextStyle(
                      color: colors.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        'No: 3203',
                        style: TextStyle(
                          color: colors.secondaryLiteColor,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                      ),
                      Spacer(),
                      Hero(
                        tag: 'usr1',
                        child: Icon(
                          Icons.star,
                          color: colors.secondaryColor,
                          size: 16,
                        ),
                      ),
                      Hero(
                        tag: 'usr2',
                        child: Icon(
                          Icons.star,
                          color: colors.secondaryColor,
                          size: 16,
                        ),
                      ),
                      Hero(
                        tag: 'usr3',
                        child: Icon(
                          Icons.star,
                          color: colors.secondaryColor,
                          size: 16,
                        ),
                      ),
                      Hero(
                        tag: 'usr4',
                        child: Icon(
                          Icons.star,
                          color: colors.secondaryColor,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: colors.secondaryColor,
                        size: 22,
                      ),
                      Icon(
                        Icons.account_circle,
                        color: colors.secondaryColor,
                        size: 22,
                      ),
                      Icon(
                        Icons.account_circle,
                        color: colors.secondaryColor,
                        size: 22,
                      ),
                      Icon(
                        Icons.account_circle,
                        color: colors.secondaryColor,
                        size: 22,
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (active) {
              setState(() {
                controller.reverse();
                active = !active;
              });
            } else {
              setState(() {
                controller.forward();
                active = !active;
              });
            }
            print('Tapped');
          },
          onDoubleTap: () {},
          child: Hero(
            tag: 'bkImage',
            child: Container(
              width: 250,
              // padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              margin: EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: marginAnimation.value),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: shadowAnimation.value * 0.3,
                    blurRadius: shadowAnimation.value,
                  )
                ],
                image: DecorationImage(
                  image: AssetImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black38,
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Text(
                      'Gilgit Baltistan',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black38,
                        ],
                      ),
                    ),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white70,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
