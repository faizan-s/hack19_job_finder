import 'package:flutter/material.dart';
import 'package:hack19_job_finder/pages/search.dart';
import 'package:hack19_job_finder/pages/jobfinder_list.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppBar(),
      drawer: getDrawer(context),
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
    backgroundColor: Colors.green,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            width: 50.0,
            height: 50.0,
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
          color: Colors.white,
          icon: new Icon(Icons.notifications), 
          onPressed: (){}
        )
      ],
    )  
  ); 
}

getDrawer(context) {
  return Drawer(
    child: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Registration'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Resume'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 2.0,
          ),
        ],
      ),
    )
  );
}