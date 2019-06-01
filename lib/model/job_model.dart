class Job {
  final String id;
  final String jobName;
  final String location;
  final String organisation;
  final String lastUpdated;
  final String logo;
  final bool isFullTime;

  const Job(
      {this.id,
      this.jobName,
      this.location,
      this.organisation,
      this.lastUpdated,
      this.logo,
      this.isFullTime});
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
        id: json['id'] as String,
        jobName: json['jobName'] as String,
        location: json['location'] as String,
        organisation: json['organisation'] as String,
        lastUpdated: json['lastUpdated'] as String,
        logo: json['logo'] as String,
        isFullTime: json['isFullTime'] as bool);
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
