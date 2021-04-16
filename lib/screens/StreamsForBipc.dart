import 'package:flutter/material.dart';
import 'package:career_exhort/components/StreamCards.dart';

class StreamsForBipc extends StatelessWidget {
  static const String id = 'StreamsForBipc';

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
              'Streams You Can \n Pursue After BiPC',
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
            cardName: 'MBBS \n Medicinae Baccalaureus Baccalaureus Chirurgiae',
            cardColor: Colors.green,
            onpress: () {},
          ),
          SizedBox(
            height: 15.0,
          ),
          StreamsCard(
            cardName: 'BPharm \n Bachelor of Pharmacy',
            cardColor: Colors.green,
            onpress: () {},
          ),
          SizedBox(
            height: 15.0,
          ),
          StreamsCard(cardName: 'BDS\n Bachelor of Dental Studies',
            cardColor: Colors.green,
            onpress: null,),
        ],
      ),
    );
  }
}
