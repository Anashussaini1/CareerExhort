import 'package:flutter/material.dart';

class CollegeStudent extends StatelessWidget {
  final String collegeName;

  const CollegeStudent({Key key, this.collegeName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, String>> mapOfCollegeToStudent = {
      "MJ": {"Name": "Anas", "Contact": "sdfdf"}
    };
    print(mapOfCollegeToStudent[collegeName]);
    return Container();
  }
}
