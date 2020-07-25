// Core packages.
import 'package:flutter/material.dart';

// Couvee packages.
import 'package:barista/config/company_colors.dart';

class AddPointsModalConfirm extends StatelessWidget {
  const AddPointsModalConfirm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 2),
          AspectRatio(
            aspectRatio: 100 / 30,
            child: Image.asset(
              "assets/coins.png",
            ),
          ),
          Spacer(flex: 2),
          Text(
            "Penambahan poin berhasil!",
            style: TextStyle(
              fontSize: 14.0,
              color: CompanyColors.lightGrey,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            "Pelanggan baru saja dapet 100 poin",
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
                fontSize: 16.0,
                color: CompanyColors.brown,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
