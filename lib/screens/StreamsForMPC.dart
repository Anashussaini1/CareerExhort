import 'package:career_exhort/components/StreamCards.dart';
import 'package:flutter/material.dart';
import 'package:career_exhort/Lists/ListForMPC.dart';



class StreamsForMPC extends StatefulWidget {

  static const String id = 'StreamsForMPC';

  @override
  _StreamsForMPCState createState() => _StreamsForMPCState();
}

 class _StreamsForMPCState extends State<StreamsForMPC> {

  //ListMPC list = ListMPC();

  List<ListMPC> mpcStreams = [
    ListMPC(shortName: 'B.Tech',fullName: 'Bachelor Of Engineering'),
    ListMPC(shortName: 'LLB',fullName: 'Study Of Law'),
    ListMPC(shortName: 'BBA/BBM',fullName: 'Bachelor of Business Administration'),
  ];

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
              'Streams You Can \n Pursue After MPC',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Oswald',
                color: Color(0xFF1e2750),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mpcStreams.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade400,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListTile(
                      title: Text(mpcStreams[index].shortName),
                      subtitle: Text(mpcStreams[index].fullName),
                      onTap: (){
                       // Navigator.pushNamed(context, routeName)
                      },
                    ),
                  ),
                );
                },
            ),
          ),
        ],
      ),
    );
  }
}

// SizedBox(
// height: 10.0,
// ),
// StreamsCard(
// cardName: 'B.E/BTech \n Bachelor of Engineering',
// cardColor: Colors.indigo.shade400,
// onpress: () {},
// ),
// SizedBox(
// height: 15.0,
// ),
// StreamsCard(
// cardName: 'LLB \n Bachelor of Laws',
// cardColor: Colors.indigo.shade400,
// onpress: () {},
// ),
// SizedBox(
// height: 15.0,
// ),
// StreamsCard(cardName: 'BArch \n Bachelor of Architecture ',
// cardColor: Colors.indigo.shade400,
// onpress: null,),
// SizedBox(
// height: 15.0,
// ),
// StreamsCard(
// cardName: 'BBA/BBM \n Bachelor of Business Administration',
// cardColor: Colors.indigo.shade400,
// onpress: () {},
// ),
