// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, empty_constructor_bodies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'iconeTextFile.dart';
import 'Container file.dart';
const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Color maleColor = deActiveColor;
 Color femaleColor = deActiveColor;
  void updateColor(int gender){
    if(gender == 1) {
      maleColor = activeColor;
      femaleColor = deActiveColor;
    }
    if(gender == 2){
      maleColor = deActiveColor;
      femaleColor = activeColor;

    }
  }
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
              Expanded(

                child: RepeatContainerCode( colors: maleColor,
               cardwidget: RepeatTextsndICONeWidget(
                 iconData: FontAwesomeIcons.male,
                 label: 'MALE',
               ),
              ),

              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                   setState(() {
                     updateColor(1);
                   });

                  },
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });

                    },
                    child: RepeatContainerCode( colors: femaleColor,
                      cardwidget: RepeatTextsndICONeWidget(iconData: FontAwesomeIcons.female,
                     label: 'FEMALE',
              ),
              ),
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



// ignore: must_be_immutable
