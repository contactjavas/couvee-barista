import 'package:barista/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';

class AddPointsBody extends StatefulWidget {
  const AddPointsBody({Key key}) : super(key: key);

  @override
  _AddPointsBodyState createState() => _AddPointsBodyState();
}

class _AddPointsBodyState extends State<AddPointsBody> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.87,
      minChildSize: 0.87,
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
                Spacer(flex: 1),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
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
                        return AddPointBottomModal();
                      },
                    );
                  },
                  child: AspectRatio(
                    aspectRatio: 100 / 80,
                    child: Image.asset("assets/qr-code.png"),
                  ),
                ),
                Spacer(flex: 1),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    "Tunjukkan  QRcode ini ke pelanggan untuk discan, lalu pastikan total harga yang diiunput benar.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CompanyColors.lightGrey,
                    ),
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        );
      },
    );
  }
}
