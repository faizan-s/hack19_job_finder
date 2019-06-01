import 'package:flutter/material.dart';
import 'package:hack19_job_finder/model/job_model.dart';

class JobDetails extends StatelessWidget {
  final Job job;
  JobDetails(this.job);
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
          height: 92.0,
        )),
      ),
    );

    Widget _jobValue({String value, String image}) {
      return new Container(
        alignment: FractionalOffset.centerLeft,
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Text(job.organisation,
              style: const TextStyle(
                  color: const Color(0xffb6b2df),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400)),
        ]),
      );
    }

    final jobCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      alignment: FractionalOffset.centerLeft,
      // constraints: new BoxConstraints.,
      width: 150,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(job.jobName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600)),
          new Container(height: 10.0),
          new Text(job.location,
              style: const TextStyle(
                  color: const Color(0xffb6b2df),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                  flex: 1,
                  child: _jobValue(
                    value: job.location,
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
                  ))
            ],
          ),
        ],
      ),
    );

    final jobCard = new Container(
      child: jobCardContent,
    );

    return new GestureDetector(
        // onTap: horizontal
        //     ? () => Navigator.of(context).push(
        //           new PageRouteBuilder(
        //               pageBuilder: (_, __, ___) => new DetailPage(job)),
        //         )
        //     : null,
      child: new Container(
      height: 124.0,
      // padding: new EdgeInsets.only(left: 16.0, top: 10),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
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
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Row(
        children: <Widget>[
          jobThumbnail,
          jobCard,
        ],
      ),
    ));
  }
}
