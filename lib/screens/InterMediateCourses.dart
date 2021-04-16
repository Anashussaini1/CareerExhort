import 'package:career_exhort/components/CircularButton.dart';
import 'package:career_exhort/screens/StreamsForBipc.dart';
import 'package:career_exhort/screens/StreamsForCEC.dart';
import 'package:career_exhort/screens/StreamsForMPC.dart';
import 'package:flutter/material.dart';

class InterMediateCourses extends StatelessWidget {
  static const String id = 'InterMediateCourses';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Exhort'),
        centerTitle: true,
        backgroundColor: Color(0xFF1e2750),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //padding: EdgeInsets.only(left: 30.0),
              alignment: Alignment.center,
              child: Text('Select Your Course', style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Oswald',
                color: Color(0xFF1e2750),
              ),),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularButton(circularButtoName: 'BiPC', onPress: (){
              Navigator.pushNamed(context, StreamsForBipc.id);
            },),
            SizedBox(
              height: 20.0,
            ),
            CircularButton(circularButtoName: 'CEC', onPress: (){
              Navigator.pushNamed(context, StreamsForCEC.id);
            }),
            SizedBox(
              height: 20.0,
            ),
            CircularButton(circularButtoName: 'MPC', onPress: (){
              Navigator.pushNamed(context, StreamsForMPC.id);
            }),
            SizedBox(
              height: 20.0,
            ),
            CircularButton(circularButtoName: 'Other', onPress: null),
          ],
        ),
      ),
    );
  }
}
