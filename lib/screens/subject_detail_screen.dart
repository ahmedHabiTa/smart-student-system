import 'package:flutter/material.dart';
import 'package:triple_s_project/screens/quiz.dart';
import 'package:triple_s_project/screens/reports.dart';
import 'banks.dart';

class SubjectDetailScreen extends StatefulWidget {
  static const routeName = 'subject_details_screen';

  @override
  _SubjectDetailScreenState createState() => _SubjectDetailScreenState();
}

class _SubjectDetailScreenState extends State<SubjectDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final  subID = ModalRoute.of(context).settings.arguments ;
    return Scaffold(
        appBar: AppBar(
          title: Text('subject name',style: Theme.of(context).textTheme.headline6,),
        ),
        body: Hero(
          tag: subID,
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  elevation: 6.0,
                  color: Colors.white54,
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Banks.routeName,
                      );
                    },
                    leading: Text('Bank',
                        textAlign: TextAlign.center,
                        style:
                            new TextStyle(fontSize: 20.0, fontFamily: 'Satisfy')),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  elevation: 6.0,
                  color: Colors.white54,
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Quizzes.routeName,
                      );
                    },
                    leading: Text('Quiz',
                        textAlign: TextAlign.center,
                        style:
                        new TextStyle(fontSize: 20.0, fontFamily: 'Satisfy')),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  elevation: 6.0,
                  color: Colors.white54,
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Reports.routeName,
                      );
                    },
                    leading: Text('Report',
                        textAlign: TextAlign.center,
                        style:
                        new TextStyle(fontSize: 20.0, fontFamily: 'Satisfy')),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}