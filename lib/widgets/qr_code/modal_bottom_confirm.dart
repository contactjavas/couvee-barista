// Core packages.
import 'package:flutter/material.dart';

// Couvee packages.
import 'package:barista/screens/screens.dart';
import 'package:barista/config/company_colors.dart';

class BottomModalConfirm extends StatelessWidget {
  const BottomModalConfirm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              width: 40.0,
              height: 5.0,
            ),
          ),
          Spacer(flex: 1),
          AspectRatio(
            aspectRatio: 100 / 50,
            child: Image.asset("assets/bag-mug.png"),
          ),
          Spacer(flex: 1),
          Text(
            "Pengambilan merchandise berhasil.",
            style: TextStyle(
              fontSize: 14.0,
              color: CompanyColors.lightGrey,
            ),
          ),
          Spacer(flex: 1),
          Text(
            "Terimakasih atas pelayanannya!",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Spacer(flex: 2),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Kembali ke Home",
              style: TextStyle(
                color: CompanyColors.brown,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
