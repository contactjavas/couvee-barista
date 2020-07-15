// Core packages.
import 'dart:ui';
import 'package:barista/screens/screens.dart';
import 'package:barista/widgets/home/services_list.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenWidth;
  double screenHeight;

  double body1FontSize;
  double subheadFontSize;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    body1FontSize = Theme.of(context).textTheme.bodyText2.fontSize;
    subheadFontSize = Theme.of(context).textTheme.subtitle1.fontSize;

    return Container(
      constraints: BoxConstraints.expand(),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: screenHeight / 12, bottom: 30.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/couvee-logo.png",
                    width: screenWidth / 6.5,
                  ),
                ),
                Text(
                  "Selamat datang,",
                  style: TextStyle(
                    color: CompanyColors.lightGrey,
                    fontSize: body1FontSize,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Bagus",
                            style: GoogleFonts.kanit(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              textStyle: TextStyle(
                                height: 1.23,
                                color: CompanyColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                        child: FlatButton.icon(
                          color: CompanyColors.brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          icon: Icon(
                            EvaIcons.settings,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Setting",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/settings");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox.expand(
            child: ServicesList(),
          ),
        ],
      ),
    );
  }
}
