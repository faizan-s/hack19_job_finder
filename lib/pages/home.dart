import 'package:flutter/material.dart';
import 'package:hack19_job_finder/pages/search.dart';
import 'package:hack19_job_finder/pages/jobfinder_list.dart';

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
        new Search(),
        LandingPageBody()
      ],
    );
  }
}

getAppBar() {
  return AppBar(
    automaticallyImplyLeading: false, // Don't show the leading button
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          alignment: Alignment.centerLeft,
          color: Colors.blue,
          icon: new Icon(Icons.menu), 
          onPressed:() {

          }
        ),
        Container(
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8fhxpPX98Y2vcd6P230As-0WWa8BPrhRu8TL3rZeFZyUZT_ox",
                  )
              )
          )),
        IconButton(
          alignment: Alignment.centerRight,
          color: Colors.blue,
          icon: new Icon(Icons.notifications), 
          onPressed: (){}
        )
      ],
    )  
  ); 
}

getMenuList() {
  return Drawer(
      child: Column(
          children: <Widget>[
            Text('aaa')
          ]
      )
  );
}