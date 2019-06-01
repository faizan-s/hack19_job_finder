import 'package:flutter/material.dart';
import 'package:hack19_job_finder/model/job_model.dart';

class JobDetails extends StatelessWidget {
  final Job job;
  JobDetails(this.job);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFFEAEEF2),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getContent(context),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 50, left: 140),
      child: new Hero(
          tag: "job-hero-${job.id}",
          child: new Image.asset(
            'assets/img/company.png',
            // 'assets/img/company.png',
            // job.logo,
            fit: BoxFit.cover,
            height: 300.0,
          )),
      constraints: new BoxConstraints.expand(
        height: 100,
        width: 100,
      ),
    );
  }

  Container _getContent(context) {
    final _overviewTitle = "Details".toUpperCase();
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 172.0, 0.0, 32.0),
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.symmetric(vertical: 18.0),
            height: 250.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0),
                ),
              ],
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 22.0,
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  _overviewTitle,
                ),
                new Container(
                    margin: new EdgeInsets.symmetric(vertical: 8.0),
                    height: 2.0,
                    width: 180.0,
                    color: new Color(0xff00c6ff)),
                Container(
                    padding: const EdgeInsets.all(7.0),
                    child: new Text('POSITION ID : ' + job.id)),
                Container(
                    padding: const EdgeInsets.all(7.0),
                    child: new Text('ORGANISATION : ' + job.organisation)),
                Container(
                    padding: const EdgeInsets.all(7.0),
                    child: new Text('POSITION NAME : ' + job.jobName)),
                Container(
                    padding: const EdgeInsets.all(7.0),
                    child: new Text('LOCATION : ' + job.location)),
                Container(
                    padding: const EdgeInsets.all(7.0),
                    child: new Text(
                        'FULL TIME: ' + (job.isFullTime ? 'Yes' : 'No'))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Container(child: new BackButton(color: Colors.black)),
    );
  }
}
