import 'package:career_exhort/screens/DefaultHomeScreen.dart';
import 'package:career_exhort/screens/InterMediateCourses.dart';
import 'package:career_exhort/screens/SelectSubjectTenth.dart';
import 'package:career_exhort/screens/StreamsForBipc.dart';
import 'package:career_exhort/screens/StreamsForCEC.dart';
import 'package:career_exhort/screens/StreamsForMPC.dart';
import 'package:career_exhort/screens/colleges.dart';
import 'package:flutter/material.dart';
import 'screens/DefaultHomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: DefaultHomeScreen(),
      routes: {
        SelectSubjectsTenth.id : (context) => SelectSubjectsTenth(),
        InterMediateCourses.id : (context) => InterMediateCourses(),
        StreamsForBipc.id : (context) => StreamsForBipc(),
        StreamsForCEC.id: (context) => StreamsForCEC(),
        StreamsForMPC.id: (context) => StreamsForMPC(),
        Colleges.id :(context)=>Colleges(),
      },
    );
  }
}
