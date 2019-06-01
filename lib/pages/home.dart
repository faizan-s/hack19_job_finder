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
        new Text("Job Finder"),
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
          onPressed: (){}
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
                      "https://media.licdn.com/dms/image/C5103AQEq2T_vscc2qw/profile-displayphoto-shrink_200_200/0?e=1562198400&v=beta&t=8OihbgEfStLPH7TT7fr2pPQiaYt7PfJeozPpvU6vlKs",
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
