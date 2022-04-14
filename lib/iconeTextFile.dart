import 'package:flutter/material.dart';

class RepeatTextsndICONeWidget extends StatelessWidget {
  RepeatTextsndICONeWidget({@required this.iconData, this.label})   ;

  final IconData? iconData;
  final String? label;



  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ) ,
        SizedBox(
          height: 15.0,
        ) ,
        Text(label!,style: TextStyle(
          fontSize:30.0,
          color: Colors.white,
        ),)
      ],

    );
  }
}