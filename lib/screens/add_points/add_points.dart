// Core packages.
import 'package:flutter/material.dart';

// Extension packages.
import 'package:google_fonts/google_fonts.dart';

// Couvee packages.
import 'package:barista/screens/screens.dart';
import 'package:barista/widgets/widgets.dart';

class AddPoints extends StatelessWidget {
  const AddPoints({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 6,
            ),
            ButtonTheme(
              minWidth: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: new Icon(
                  Icons.arrow_back,
                  size: 16.0,
                ),
                shape: new CircleBorder(),
                elevation: 0.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        title: Text(
          "Tunjukkan ke Pelanggan",
          style: GoogleFonts.kanit(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          TexturedWall(),
          AddPointsBody(),
        ],
      ),
    );
  }
}
