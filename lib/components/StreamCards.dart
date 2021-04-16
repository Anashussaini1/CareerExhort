import 'package:flutter/material.dart';

class StreamsCard extends StatelessWidget {
  StreamsCard({@required this.cardName, @required this.onpress, this.cardColor});

  final String cardName;
  final Function onpress;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
        child: MaterialButton(
          child: Text(
            cardName,
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: onpress,
          minWidth: 400.0,
          height: 100.0,
        ),
      ),
    );
  }
}
