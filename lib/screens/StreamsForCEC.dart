import 'package:flutter/material.dart';
import 'package:career_exhort/components/StreamCards.dart';

class StreamsForCEC extends StatelessWidget {
  static const String id = 'StreamsForCEC';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Exhort'),
        centerTitle: true,
        backgroundColor: Color(0xFF1e2750),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 30.0),
            child: Text(
              'Streams You Can \n Pursue After CEC',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Oswald',
                color: Color(0xFF1e2750),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          StreamsCard(
            cardName: 'CA \n Chartered Accountant',
            cardColor: Colors.brown.shade400,
            onpress: () {},
          ),
          SizedBox(
            height: 15.0,
          ),
          StreamsCard(
            cardName: 'BBA/BBM \n Bachelor of Business Administration',
            cardColor: Colors.brown.shade400,
            onpress: () {},
          ),
          SizedBox(
            height: 15.0,
          ),
          StreamsCard(cardName: 'B.com\n Bachelor of Commerce',
              onpress: null,
            cardColor: Colors.brown.shade400),
        ],
      ),
    );
  }
}