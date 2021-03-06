import 'package:flutter/material.dart';
import 'package:fractastic/model/Class.dart';
import 'package:fractastic/ui/home/Chapter1OptionPage.dart';
import 'package:fractastic/ui/home/Chapter2OptionPage.dart';
import 'package:fractastic/ui/home/Chapter3OptionPage.dart';
import '../../ui/blankPage.dart';
import '../../constants.dart' as Constants;

class ChapterList extends StatefulWidget {
  final Class classroom;

  ChapterList({Key key, @required this.classroom}) : super(key: key);
  @override
  _MyChapterListState createState() => _MyChapterListState(classroom);
}

class _MyChapterListState extends State<ChapterList> {
  Class classroom;
  _MyChapterListState(this.classroom);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 10.0),
                    padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.redAccent,
                    ),
                    child: Text(
                      'Classroom',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 1'),
                subtitle: Text('Introduction and Fraction in Real Life'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.red,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chapter1OptionPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 2'),
                subtitle: Text('Basic of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.orange,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chapter2OptionPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 3'),
                subtitle: Text('Conversion of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.yellow,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chapter3OptionPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 4'),
                subtitle: Text('Adding of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.green,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlankPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 5'),
                subtitle: Text('Subtracting of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.blue,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlankPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 6'),
                subtitle: Text('Multiplying of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.indigo,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlankPage(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Chapter 7'),
                subtitle: Text('Dividing of Fraction'),
                leading: Icon(
                  Icons.collections_bookmark,
                  color: Colors.purple,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(Constants.COLOR_PRIMARY),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlankPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[50],
    );
  }
}
