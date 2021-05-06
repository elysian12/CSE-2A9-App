class TimeTable {
  final String subject;
  final String faculty;
  final String link;
  final String iconUrl;

  TimeTable({this.subject, this.faculty, this.link, this.iconUrl});

  factory TimeTable.fromJson(Map<String, dynamic> json) => TimeTable(
      subject: json['subject'],
      faculty: json['faculty'],
      link: json['link'],
      iconUrl: json['iconUrl']);
}
