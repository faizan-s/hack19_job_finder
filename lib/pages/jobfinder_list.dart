import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hack19_job_finder/model/job_model.dart';
import 'package:hack19_job_finder/pages/jobfinder_details.dart';
import 'package:http/http.dart' as http;

class LandingPageBody extends StatelessWidget {
  Future<List<Job>> fetchJobs(http.Client client) async {
    final response =
        await client.get('http://www.mocky.io/v2/5cf21bec3300001e17d0d040');
    return compute(parseJobs, response.body);
  }

  static List<Job> parseJobs(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Job>((json) => Job.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: FutureBuilder<List<Job>>(
      future: fetchJobs(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        print(snapshot);
        return snapshot.hasData
            ? JobsList(jobs: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    ));
  }
}

class JobsList extends StatelessWidget {
  final List<Job> jobs;
  JobsList({Key key, this.jobs}) : super(key: key);
  Widget _buildJobs(BuildContext context, int index) {
    print(jobs[index]);
    return Container(
        color: const Color(0xFFECEEF2), child: new JobDetails(jobs[index]));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildJobs,
      itemCount: jobs.length,
    );
  }
}
