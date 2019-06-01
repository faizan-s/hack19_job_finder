import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppBar(),
      body: new HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => new _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text("Job Finder"),
      ],
    );
  }
}

getAppBar() {
  return AppBar(
    backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: new Icon(Icons.menu), 
          onPressed: (){}
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, //remove this when you add image.
            ),
          ),
        ), 
        IconButton(icon: new Icon(Icons.notifications), onPressed: (){}),
      ],
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        )
      ),
  )  ; 
}
