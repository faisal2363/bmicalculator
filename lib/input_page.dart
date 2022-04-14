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
              Expanded(child: RepeatContainerCode( colors: Colors.blue,),
              ),
              Expanded(child: RepeatContainerCode( colors: Colors.blue,),
              )

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
class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
     final Color? colors;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
