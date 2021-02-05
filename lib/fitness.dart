import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceSize = MediaQuery.of(context);
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
               SizedBox(height:40.0),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   RichText(text: TextSpan(text: "Day 1 \n",
                       style: TextStyle(color: Colors.black,fontSize: 50.0),
                      children: [
                        TextSpan(text: 'Strength',style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black12,
                          fontWeight: FontWeight.bold
                        )),
                      ]
                   ),
                   ),
                   Container(
                     width: deviceSize.size.width*0.3,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(49.0),
                       gradient: LinearGradient(
                         begin: Alignment(-1.0, -4.0),
                         end: Alignment(1.0, 4.0),
                         colors: [
                           Color(0xfff5ffff),
                           Color(0xffced9e1)
                         ]
                       ),
                       boxShadow: [
                         BoxShadow(
                           offset: Offset(15, 15),
                           color: Color(0xffc3cdd5),
                           blurRadius: 15,
                           spreadRadius: 1.0
                         ),
                         BoxShadow(
                             offset: Offset(-15, -15),
                             color: Color(0xffffffff),
                             blurRadius: 25,
                             spreadRadius: 1.0,
                         ),
                       ]
                     ),
                     child: MaterialButton(
                         onPressed: null,
                     child: Text("Next",style: TextStyle(
                       color: Colors.black,
                       fontSize: 20.0
                     ),),),
                   )
                 ],
               ),
               SizedBox(height: 50.0,),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: deviceSize.size.width*0.070),
                 width: double.infinity,
                 height: deviceSize.size.height*0.18,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(
                         20.0),
                     gradient: LinearGradient(
                         begin: Alignment(-1.0, -4.0),
                         end: Alignment(1.0, 4.0),
                         colors: [
                           Color(0xfff5ffff),
                           Color(0xffced9e1)
                         ]
                     ),
                     boxShadow: [
                       BoxShadow(
                           offset: Offset(15, 15),
                           color: Color(0xffc3cdd5),
                           blurRadius: 15,
                           spreadRadius: 1.0
                       ),
                       BoxShadow(
                         offset: Offset(-15, -15),
                         color: Color(0xffffffff),
                         blurRadius: 25,
                         spreadRadius: 1.0,
                       ),
                     ]
                 ),
                 child: Container(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,

                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("Rounds"),
                           Text("4"),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text(" Time"),
                           Text("30min"),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("Intensity"),
                          
                         ],
                       )
                     ],
                   ),
                 )
               ),
               Container(
                   margin: EdgeInsets.only(top: 50.0,left: 5.0,right: 5.0),
                   width: double.infinity,
                   height: deviceSize.size.height*0.46,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(
                           20.0),
                       gradient: LinearGradient(
                           begin: Alignment(-1.0, -4.0),
                           end: Alignment(1.0, 4.0),
                           colors: [
                             Color(0xfff5ffff),
                             Color(0xffced9e1)
                           ]
                       ),
                       boxShadow: [
                         BoxShadow(
                             offset: Offset(15, 15),
                             color: Color(0xffc3cdd5),
                             blurRadius: 15,
                             spreadRadius: 1.0
                         ),
                         BoxShadow(
                           offset: Offset(-15, -15),
                           color: Color(0xffffffff),
                           blurRadius: 25,
                           spreadRadius: 1.0,
                         ),
                       ]
                   ),
                   child: MaterialButton()
               ),
             ],
           ),
         ),
       )
    );
  }
}
