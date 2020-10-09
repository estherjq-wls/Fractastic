import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fractastic/model/Class.dart';
import 'package:fractastic/ui/home/ClassTile.dart';
import '../../main.dart';

class ClassList extends StatefulWidget {
  @override
  _ClassListState createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  @override
  Widget build(BuildContext context) {
    final classes = Provider.of<List<Class>>(context);
    if (classes.isNotEmpty) {
      classes.forEach((element) {
        if (!MyAppState.classCodeList.contains(element.classCode))
          MyAppState.classCodeList.add(element.classCode);
      });
    }
    return ListView.builder(
      itemCount: classes.length,
      itemBuilder: (context, index) {
        return ClassTile(classTile: classes[index]);
      },
    );
  }
}
