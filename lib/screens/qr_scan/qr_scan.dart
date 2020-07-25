// Core packages.
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Couvee packages.
import 'package:barista/widgets/widgets.dart';
import 'package:barista/config/company_colors.dart';
import '../screens.dart';

class ScanQrcode extends StatefulWidget {
  const ScanQrcode({
    Key key,
  }) : super(key: key);

  _ScanQrcode createState() => _ScanQrcode();
}

class _ScanQrcode extends State<ScanQrcode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var qrText = "";
  QRViewController controller;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  double screenWidth;
  double screenHeight;
  double stepItemSize;
  AppBar appBar;

  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    stepItemSize = (screenWidth / 3) - 27.0;

    appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0),
        child: RawMaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Icon(
            Icons.arrow_back,
            size: 16.0,
            color: Colors.black,
          ),
          shape: new CircleBorder(),
          elevation: 0.0,
          fillColor: Colors.white,
        ),
      ),
      centerTitle: true,
      title: Text(
        'Scan Barcode dari Customer',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        TexturedWall(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar,
          key: _scaffoldKey,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Container(
                  alignment: Alignment.center,
                  // child: Text("Hi"),
                  child: QRView(
                    key: qrKey,
                    overlay: QrScannerOverlayShape(
                      borderColor: CompanyColors.brown,
                      borderRadius: 10,
                      borderLength: 20,
                      borderWidth: 10,
                      cutOutSize: 280.0,
                      cutOutTop: appBar.preferredSize.height +
                          MediaQuery.of(context).padding.top,
                    ),
                    onQRViewCreated: _onQRViewCreated,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(
                    top: stepItemSize / 6,
                    right: 25,
                    left: 25,
                  ),
                  color: CompanyColors.inactiveTabColor[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
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
                              return BottomModalDetails();
                            },
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(
                            "Scan QR-code dari pelanggan lalu cek ketersediaan merchandise.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: CompanyColors.lightGrey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
