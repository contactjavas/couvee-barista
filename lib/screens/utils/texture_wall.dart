import 'package:flutter/material.dart';

class TexturedWall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            'assets/textured-wall.png',
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
