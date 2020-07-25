// Core packages.
import 'package:flutter/material.dart';

// Extension packages.
import 'package:barista/config/company_colors.dart';

// Couvee packages.
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class AddPointBottomModal extends StatelessWidget {
  const AddPointBottomModal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      child: Column(
        children: <Widget>[
          Spacer(flex: 3),
          Text(
            "Rp 80.000",
            style: GoogleFonts.kanit(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              "Apakah total harga yang diinput oleh pelanggan sudah benar?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: CompanyColors.lightGrey,
              ),
            ),
          ),
          Spacer(flex: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50.0,
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Salah",
                    style: TextStyle(
                      color: CompanyColors.brown,
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50.0,
                  child: FlatButton(
                    color: CompanyColors.brown,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isDismissible: true,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              35.0,
                            ),
                            topRight: Radius.circular(
                              35.0,
                            ),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return AddPointsModalConfirm();
                        },
                      );
                    },
                    child: Text(
                      "Benar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
