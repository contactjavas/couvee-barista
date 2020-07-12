import 'package:barista/screens/screens.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ServicesList extends StatefulWidget {
  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
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

    return DraggableScrollableSheet(
      initialChildSize: 0.67,
      minChildSize: 0.67,
      maxChildSize: 0.95,
      builder: (
        BuildContext context,
        ScrollController scrollController,
      ) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(0.0, -5.0),
                blurRadius: 40.0,
                color: Colors.black.withOpacity(0.05),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 24.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Column(
              children: <Widget>[
                ServiceListItem(
                  title: "Penambahan Poin",
                  description: "Tunjukkan QR-code ke pelanggan untuk discan",
                  backgroundColor: Color.fromRGBO(255, 240, 229, 1),
                  foregroundColor: Color.fromRGBO(251, 222, 202, 1),
                  image: "assets/coin.png",
                ),
                SizedBox(
                  height: 25.0,
                ),
                ServiceListItem(
                  title: "Pengambilan Merchandise",
                  description:
                      "Scan QR-code dari pelanggan dan cek ketersediaan merchandise ",
                  image: "assets/bag.png",
                  backgroundColor: Color.fromRGBO(238, 233, 208, 1),
                  foregroundColor: Color.fromRGBO(221, 213, 172, 1),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ServiceListItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color backgroundColor;
  final Color foregroundColor;
  const ServiceListItem({
    Key key,
    this.title,
    this.description,
    this.image,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      padding: EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: foregroundColor,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            padding: EdgeInsets.all(20.0),
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(width: 16.0),
          Flexible(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(flex: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(flex: 2),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                Spacer(flex: 4),
              ],
            ),
          ),
          Icon(
            EvaIcons.arrowIosForwardOutline,
            color: foregroundColor,
          ),
        ],
      ),
    );
  }
}
