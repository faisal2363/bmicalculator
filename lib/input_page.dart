// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, empty_constructor_bodies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: RepeatContainerCode( colors: Colors.blue,
               cardwidget: RepeatTextsndICONeWidget(
                 iconData: FontAwesomeIcons.male,
                 label: 'MALE',
               ),
              ),

              ),
              Expanded(child: RepeatContainerCode( colors: Colors.blue,
              cardwidget: RepeatTextsndICONeWidget(iconData: FontAwesomeIcons.female,
                 label: 'FEMALE', 
              ),
              ),

              ) ,

            ],
          ),),
           Expanded(child:  RepeatContainerCode( colors: Colors.blue,),
          ),
          Expanded(child: Row(
          children:  <Widget>[
    Expanded(child:  RepeatContainerCode( colors: Colors.blue,),
    ),
    Expanded(child: RepeatContainerCode( colors: Colors.blue,),),

    ],
    ),),

        ],
      )
    );
  }
}

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

// ignore: must_be_immutable
class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors,this.cardwidget});
     final Color? colors;
     final Widget? cardwidget;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: cardwidget,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
