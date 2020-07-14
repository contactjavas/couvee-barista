import 'package:barista/screens/screens.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class ServicesList extends StatefulWidget {
  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  @override
  Widget build(BuildContext context) {
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
                  callback: () {
                    Navigator.pushNamed(context, "/addPoints");
                  },
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
