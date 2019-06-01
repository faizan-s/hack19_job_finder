import 'package:flutter/material.dart';


class Search extends StatelessWidget{

  final String searchString;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(top: 20.0),
      height: 20.0,
      child: new Center(
        child: new Text('Search Bar',
            style: Theme.TextStyles.appBarTitle
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(colors: [Theme.Colors.appBarGradientStart, Theme.Colors.appBarGradientEnd],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}