import 'package:career_exhort/screens/InterMediateCourses.dart';
import 'package:career_exhort/screens/SelectSubjectTenth.dart';
import 'package:flutter/material.dart';
import 'package:career_exhort/components/CircularButton.dart';

class DefaultHomeScreen extends StatelessWidget {
  static const String id = 'DefaultHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20.0),
        //color: Colors.blue,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              width: 500.0,
              height: 400.0,
              image: AssetImage('images/logo.png'),),
            Text(
              'Career Guidance After',
              style: TextStyle(
                fontFamily: 'Oswald',
                color: Color(0xFF1e2750),
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularButton(circularButtoName: '10th',
            onPress: (){
              Navigator.pushNamed(context, SelectSubjectsTenth.id);
            },),
            SizedBox(
              height: 10.0,
            ),
            CircularButton(circularButtoName: 'Intermediate',
            onPress: (){
              Navigator.pushNamed(context, InterMediateCourses.id);
            },),
            SizedBox(
              height: 30.0,
            ),
            //Text('If you are an Existing User LOGIN'),
          ],
        ),
      ),
    );
  }
}
