import 'package:flutter/material.dart';
import 'package:hack19_job_finder/theme.dart' as Theme;
import 'package:hack19_job_finder/model/job_model.dart';
import 'package:hack19_job_finder/common/query.dart';
import 'package:hack19_job_finder/pages/jobfinder_list.dart';
import 'package:http/http.dart' as http;


class Search extends StatelessWidget{

  final String searchString = '';
  TextEditingController textController = new TextEditingController();

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
              controller: textController,
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
                  onPressed: () { fetchData(context); },
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

  void fetchData(context) {
    print('I am clicked');
    Query.queryString = textController.text;
    print(Query.queryString );
    String url ='https://jobs.search.gov/jobs/search.json?query=' + Query.queryString;
    http.get(url).then((result) {
      LandingPageBody.parseJobs(result.body);
      Navigator.pushNamed(
          context,
          '/home'
      );
    });
  }
}