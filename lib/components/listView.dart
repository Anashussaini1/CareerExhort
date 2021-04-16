import 'package:flutter/material.dart';

class TenthSubjectsList extends StatefulWidget {
  @override
  _TenthSubjectsListState createState() => _TenthSubjectsListState();
}

class _TenthSubjectsListState extends State<TenthSubjectsList> {
  bool checkBoxtoggle = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.blueAccent,
          contentPadding: EdgeInsets.all(20.0),
          secondary: Icon(Icons.calculate_outlined),
          dense: true,
          title: Text('Maths', style: TextStyle(
            fontSize: 20.0,
          ),),
          value: checkBoxtoggle,
          onChanged: (value) {
            setState(
              () {
                checkBoxtoggle = value;
                if(checkBoxtoggle == true) {
                  print('Selected maths');
                }
              },
            );
          },
        ),
      ],
    );
  }
}
