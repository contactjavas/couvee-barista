import 'package:barista/screens/home/home.dart';
import 'package:barista/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barista App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/addPoints': (context) {
          return AddPoints();
        },
        "/qrScan": (context) {
          return ScanQrcode();
        },
        "/settings": (context) {
          return SettingsScreen();
        }
      },
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            TexturedWall(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
