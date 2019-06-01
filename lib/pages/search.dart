import 'package:flutter/material.dart';
import 'package:hack19_job_finder/theme.dart' as Theme;


class Search extends StatelessWidget{

  final String searchString = '';

  @override
  Widget build(BuildContext context) {
      return new Container(
          child: new Padding(
        padding: EdgeInsets.all(20.0),
        child: new Center(
        child: new PhysicalModel(
          color: Theme.Colors.appBackground,
          borderRadius: new BorderRadius.circular(25.0),
          child: new TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: InputBorder.none,
                hintText: Theme.Constants.searchPlaceHolder,
                prefixIcon: IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Theme.Colors.searchTextColor,
                    ),
                    onPressed: null),
                suffixIcon: IconButton(
                  onPressed: (){
                    //@todo onPress
                  },
                  icon: Icon(
                    Icons.search,
                    color: Theme.Colors.searchTextColor,
                  ),
                ),
          ),
        ),
        ),
      ),
      ),
      );
  }
}