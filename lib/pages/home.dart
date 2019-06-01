import 'package:flutter/material.dart';
import 'package:hack19_job_finder/pages/search.dart';
import 'package:hack19_job_finder/pages/jobfinder_list.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppBar(context),
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

getAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: new IconThemeData(color: Colors.blue),
    title: Text('Job Search'),
    actions : <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        width: 50.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: new NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8fhxpPX98Y2vcd6P230As-0WWa8BPrhRu8TL3rZeFZyUZT_ox",
            )
          )
        )
      ),
      IconButton(
        alignment: Alignment.centerRight,
        icon: new Icon(Icons.notifications), 
        onPressed: () {
          _showAlert(context, 'No new notification!');
        },
      ),
    ],  
  ); 
}

Future _showAlert(BuildContext context, String message) async {
  return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          new FlatButton(onPressed: () => Navigator.pop(context), child: new Text('Ok'))
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
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/profile'
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.recent_actors),
            title: Text('Recomended Jobs'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/recomendedjobs'
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Recruiter Messages'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/recruitermessages'
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Application Status'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/applicationstatus'
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/settings'
              );
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