import 'package:career_exhort/screens/collegeStudent.dart';
import 'package:flutter/material.dart';

class Colleges extends StatefulWidget {
  final String streamName;
  static const String id = 'colleges';
  const Colleges({Key key, this.streamName}) : super(key: key);

  @override
  _CollegesState createState() => _CollegesState();
}

class _CollegesState extends State<Colleges> {
  @override
  Widget build(BuildContext context) {
    Map<String, List<String>> mapOfStreamToCollegeList = {
      "BTECH": ["MJ", "MGIT", "CBIT"],
      "LLB": ["MJ", "MGIT", "CBIT"],
    };

    List<String> colleges = [];

    @override
    void initState() {
      super.initState();
      colleges = mapOfStreamToCollegeList[widget.streamName];
    }

    print("${widget.streamName}");
    // return ListView(
    //   // children: colleges,
    //   children: [
    //     for (int i = 0;
    //         i < mapOfStreamToCollegeList[widget.streamName].length;
    //         i++)
    //       GestureDetector(
    //         onTap: () {
    //           Navigator.of(context).push(
    //             MaterialPageRoute(
    //               builder: (context) => CollegeStudent(
    //                 collegeName: mapOfStreamToCollegeList[widget.streamName][i],
    //               ),
    //             ),
    //           );
    //         },
    //         child: Container(
    //           child: Text("${mapOfStreamToCollegeList[widget.streamName][i]}"),
    //         ),
    //       )
    //   ],
    // );
    return ListView.builder(
      itemCount: colleges.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              title: Text(colleges[index]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Colleges(
                      streamName: colleges[index],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
