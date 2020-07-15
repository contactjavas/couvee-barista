import 'package:barista/screens/screens.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class _Item {
  final String headerValue;
  final String expandedValue;
  bool isExpanded;
  final IconData icon;

  _Item({
    this.headerValue,
    this.expandedValue,
    this.isExpanded,
    this.icon,
  });
}

class SettingsBody extends StatefulWidget {
  const SettingsBody({Key key}) : super(key: key);

  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  List<_Item> _items = <_Item>[
    new _Item(
      isExpanded: false,
      icon: EvaIcons.questionMarkCircle,
      headerValue: 'Bantuan',
      expandedValue:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In integer quam mattis lectus lacus. Mauris elementum tempor nunc, in porttitor. Eu eget fermentum laoreet ac elementum nullam. ',
    ),
  ];

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
              top: 32.0,
              left: 24.0,
              right: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kukuh",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ExpansionPanelList(
                  expandedHeaderPadding: EdgeInsets.only(bottom: 14.0),
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _items[index].isExpanded = !_items[index].isExpanded;
                    });
                  },
                  children: _items.map<ExpansionPanel>((_Item item) {
                    return ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          leading: Icon(
                            item.icon,
                            color: CompanyColors.brown,
                          ),
                          title: Text(
                            item.headerValue,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        );
                      },
                      body: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: SizedBox(),
                        title: Text(
                          item.expandedValue,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      isExpanded: item.isExpanded,
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 32.0,
                ),
                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    print("logout");
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        EvaIcons.logOutOutline,
                        color: Colors.red[300],
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(
                          color: Colors.red[300],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
