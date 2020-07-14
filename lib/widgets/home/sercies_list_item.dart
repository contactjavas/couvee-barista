import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ServiceListItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback callback;

  const ServiceListItem({
    Key key,
    this.title,
    this.description,
    this.image,
    this.backgroundColor,
    this.foregroundColor,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        padding: EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: foregroundColor,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(width: 16.0),
            Flexible(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(flex: 4),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(flex: 2),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(flex: 4),
                ],
              ),
            ),
            Icon(
              EvaIcons.arrowIosForwardOutline,
              color: foregroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
