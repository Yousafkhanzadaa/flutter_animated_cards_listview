import 'package:animated_cards_listview/constants/colors.dart';
import 'package:flutter/material.dart';

class CardPreview extends StatefulWidget {
  const CardPreview({Key key, this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  _CardPreviewState createState() => _CardPreviewState();
}

class _CardPreviewState extends State<CardPreview> {
  CustomColors colors = CustomColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Preview',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: colors.primaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: 'bkImage',
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
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
                          fontSize: 28,
                          color: Colors.white70,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black38,
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 28,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Gilgit, Northern Areas',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white70,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Hero(
                            tag: 'usr1',
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: colors.secondaryColor,
                              size: 38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          flex: 10,
                          child: Text(
                            'Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an administrative territory, and constitutes the northern portion of the larger Kashmir region, which has ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Hero(
                            tag: 'usr2',
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: colors.secondaryColor,
                              size: 38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          flex: 10,
                          child: Text(
                            'Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an administrative territory, and constitutes the northern portion of the larger Kashmir region, which has ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Hero(
                            tag: 'usr3',
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: colors.secondaryColor,
                              size: 38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          flex: 10,
                          child: Text(
                            'Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an administrative territory, and constitutes the northern portion of the larger Kashmir region, which has ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Hero(
                            tag: 'usr4',
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: colors.secondaryColor,
                              size: 38,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          flex: 10,
                          child: Text(
                            'Gilgit-Baltistan, formerly known as the Northern Areas, is a region administered by Pakistan as an administrative territory, and constitutes the northern portion of the larger Kashmir region, which has ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
