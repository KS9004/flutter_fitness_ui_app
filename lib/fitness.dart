import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffC9E0ED),
       body: SafeArea(
         child: Container(
            height: double.infinity,
            width: double.infinity,
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment(-1.0, -4.0),
                 end: Alignment(1.0, 4.0),
                 colors: [
                   Color(0xFFccd9e1),
                   Color(0xFFf3ffff),
                 ]
             ),
           boxShadow: [
             BoxShadow(
               color: Color(0xffd8e5ee),
               offset: Offset(5.0, 5.0),
               blurRadius: 15.0,
               spreadRadius: 1.0
             ),
             BoxShadow(
                 color: Color(0xffeefdff),
                 offset: Offset(-5.0, -5.0),
                 blurRadius: 15.0,
                 spreadRadius: 1.0
             ),
           ]
           ),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                 Icon(Icons.arrow_back,size:50.0,),
                 Text("FITNESS",style: TextStyle(
                   fontSize: 30.0,
                   letterSpacing: 10.0,
                 ),),
                   Icon(FontAwesomeIcons.user )
               ],),
             ],
           ),
         ),
       )
    );
  }
}
