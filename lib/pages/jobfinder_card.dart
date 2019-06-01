import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hack19_job_finder/model/job_model.dart';
import 'package:hack19_job_finder/pages/jobfinder_details.dart';

class JobCard extends StatelessWidget {
  final Job job;
  JobCard(this.job);
  @override
  Widget build(BuildContext context) {
    print(job);
    final jobThumbnail = new Container(
      alignment: FractionalOffset.centerLeft,
      child: new Hero(
        tag: "job-hero-${job.id}", // for animation
        child: new Container(
            child: new Image.network(
          job.logo,
          fit: BoxFit.cover,
          height: 85.0,
        )),
      ),
    );

    Widget _jobValue({String value, String image}) {
      return new Container(
        alignment: FractionalOffset.centerLeft,
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Text(value,
              style: const TextStyle(
                  color: const Color(0xffb6b2df),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400)),
        ]),
      );
    }

    final jobCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(6.0, 16.0, 6.0, 16.0),
      alignment: FractionalOffset.centerLeft,
      width: 220,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text(job.organisation,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600)),
              Spacer(flex: 3),
              new Text(job.location,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      color: const Color(0xffb6b2df),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400))
            ],
          ),
          new Expanded(
              flex: 1,
              child: _jobValue(
                value: job.jobName,
                // image: 'assets/img/ic_distance.png'
              )),
          new Container(
            width: 8.0,
          ),
          new Expanded(
              flex: 1,
              child: _jobValue(
                value: job.lastUpdated,
                // image: 'assets/img/ic_gravity.png'
              )),
        ],
      ),
    );

    return new GestureDetector(
        onTap: () => Navigator.of(context).push(
              new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new JobDetails(job)),
            ),
        child: new Container(
          height: 100.0,
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
          child: new Row(
            children: <Widget>[
              jobThumbnail,
              new Container(
                child: jobCardContent,
              ),
            ],
          ),
        ));
  }
}
