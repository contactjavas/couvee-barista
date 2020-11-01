// Core packages.
import 'package:barista/hive/user.dart';
import 'package:flutter/material.dart';

// Extension packages.
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart';

// Couvee packages.
import 'package:barista/config/company_colors.dart';
import 'package:barista/screens/home/home.dart';
import 'package:barista/screens/screens.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('setting');
  await Hive.openBox('user');

  runApp(CouveeApp());
  Hive.close();
}

class CouveeApp extends StatelessWidget {
  void setupLanguage() {
    initializeDateFormatting('id', null);
    initializeDateFormatting('id_ID', null);

    Intl.defaultLocale = 'id_ID';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barista App',
      theme: ThemeData(
        primarySwatch: CompanyColors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: CompanyColors.brown,
          height: 55.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: CompanyColors.lightInputColor,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
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
