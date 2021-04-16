import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {

  CircularButton({@required this.circularButtoName, @required this.onPress});

  final String circularButtoName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: Color(0xFF1e2750),
      borderRadius: BorderRadius.circular(20.0),
      child: MaterialButton(
        child: Text(circularButtoName, style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),),
        onPressed: onPress,
        minWidth: 150.0,
        height: 20.0,
      ),
    );
  }
}
