class Job {
  final String id;
  final String jobName;
  final String location;
  final String organisation;
  final String lastUpdated;
  final String logo;
  final bool isFullTime;
  final String url;

  const Job(
      {this.id,
      this.jobName,
      this.location,
      this.organisation,
      this.lastUpdated,
      this.logo,
      this.isFullTime,
      this.url});
  factory Job.fromJson(Map<String, dynamic> json) {
    print(json);
    return Job(
        id: json['id'] as String,
        jobName: json['position_title'] as String,
        location: json['locations'][0] as String,
        organisation: json['organization_name'] as String,
        lastUpdated: '2 Days ago',
        logo: 'http://pluspng.com/img-png/airbnb-logo-png-airbnb-logo-1600.png',
        isFullTime: json['isFullTime'] as bool,
        url: json['url'] as String);
  }
}

List<Job> jobsList = [
  const Job(
      id: "1234",
      jobName: "Visual Designer",
      location: "London, UK",
      organisation: "Airbnb",
      lastUpdated: "2 days ago",
      logo: "1234",
      isFullTime: true),
  const Job(
      id: "1234",
      jobName: "Visual Designer",
      location: "London, UK",
      organisation: "Airbnb",
      lastUpdated: "2 days ago",
      logo: "1234",
      isFullTime: true)
];
