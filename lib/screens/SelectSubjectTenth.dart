import 'package:flutter/material.dart';
import 'package:career_exhort/components/listView.dart';

class SelectSubjectsTenth extends StatelessWidget {
  bool checkboxtoggle = false;
  static const String id = 'SelectSubjectsTenth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Exhort'),
        centerTitle: true,
        backgroundColor: Color(0xFF1e2750),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, top: 50.0),
        child: Column(
          children: [
            Text(
              'Select Subjects According To Your Interest',
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xFF1e2750),
                fontFamily: 'Oswald',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
