import 'package:barista/screens/screens.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class BottomModalDetails extends StatelessWidget {
  const BottomModalDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Column(
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  columnInfo("Pelanggan", "Kukuh"),
                  SizedBox(height: 22.0),
                  columnInfo("Outlet", "Kaliurang"),
                  SizedBox(height: 22.0),
                  Text(
                    "Merchandise yang diambil",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CompanyColors.lightGrey,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Text(
                          "T-shirt",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Text(
                        ":2",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Text(
                          "Mug",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Text(
                        ":2",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "Pastikan merchandise tersedia di outlet ini, lalu silahkan klik “Redeem”",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: CompanyColors.lightGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: OutlineButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                              color: CompanyColors.brown,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Batal",
                                style: TextStyle(
                                  color: CompanyColors.brown,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
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
                                      topLeft: Radius.circular(35.0),
                                      topRight: Radius.circular(35.0),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return BottomModalConfirm();
                                  },
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                              child: Text(
                                "Redeem",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column columnInfo(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            color: CompanyColors.lightGrey,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 8.0),
        Text(
          info,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
