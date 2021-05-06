import 'package:cse_2a9/data/dataprovider/data_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineclassPage extends StatefulWidget {
  final String classKey;
  OnlineclassPage({this.classKey});
  @override
  _OnlineclassPageState createState() => _OnlineclassPageState();
}

class _OnlineclassPageState extends State<OnlineclassPage> {
  final dataservice = DataServices();

  @override
  Widget build(BuildContext context) {
    if (widget.classKey == 'online_class') {
      return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text('Online Classes'),
        // ),
        body: FutureBuilder(
            future: dataservice.getTimeTable(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: Container(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: snapshot.data.map<Widget>((timetable) {
                    return InkWell(
                      onTap: () {
                        _launchURL(timetable.link);
                        print(timetable.iconUrl);
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blueAccent],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 28,
                              backgroundImage: NetworkImage(timetable.iconUrl),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              timetable.subject,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              timetable.faculty,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                );
              }
            }),
      );
    } else if (widget.classKey == 'ongoing_exam') {
      return Scaffold(
        appBar: AppBar(
          title: Text('Ongoing Exam'),
        ),
        body: Center(
          child: Text('This Page is Underdevelopment'),
        ),
      );
    } else if (widget.classKey == 'upcoming_exam') {
      return Scaffold(
        appBar: AppBar(
          title: Text('Upcoming Exam'),
        ),
        body: Center(
          child: Text('This Page is Underdevelopment'),
        ),
      );
    } else if (widget.classKey == 'weekly_test') {
      return Scaffold(
        appBar: AppBar(
          title: Text('Weekly Test'),
        ),
        body: Center(
          child: Text('This Page is Underdevelopment'),
        ),
      );
    } else if (widget.classKey == 'discussion_tab') {
      return Scaffold(
        appBar: AppBar(
          title: Text('Feedback Tab'),
        ),
        body: Center(
          child: Text('This Page is Underdevelopment'),
        ),
      );
    } else
      return Scaffold();
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
