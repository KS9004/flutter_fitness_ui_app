import 'package:fitness_ui_app/fitnessList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fitness extends StatelessWidget {
var fit = FitnessData();
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
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("Rounds"),
                           Text("4"),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text(" Time"),
                           Text("30min"),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("Intensity"),
                           Container(
                             width: deviceSize.size.width*0.30,
                             height: deviceSize.size.height*0.02,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(50.0),
                               color: Color(0xffD2E5F1),
                               boxShadow: [
                                 BoxShadow(
                                   offset: Offset(-8.0, -8.0),
                                   color: Color(0xffabb3b9),
                                   blurRadius: 30,
                                   spreadRadius: 1.0
                                 ),
                                 BoxShadow(
                                     offset: Offset(8.0, 8.0),
                                     color: Color(0xffffffff),
                                     blurRadius: 15.0,
                                     spreadRadius: 1.0
                                 )
                               ]
                             ),
                             child: Container(
                               margin: EdgeInsets.only(top:4,left:2,right: 20,bottom: 4),
                               decoration: BoxDecoration(
                                 // color: Colors.red,
                                 borderRadius: BorderRadius.circular(20.0),
                                 gradient: LinearGradient(
                                   begin: Alignment.bottomLeft,
                                   end: Alignment.topRight,
                                   colors: [
                                     Color(0xffF5C77A),
                                     Color(0xffF4A781)
                                   ]
                                 )

                               ),
                             ),

                           )
                          
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
                   child:ListView.builder(
                        itemCount: fit.fitnessList.length,
                       itemBuilder: (BuildContext context,int index){
                     return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           margin: EdgeInsets.only(left: deviceSize.size.width*0.03,top: deviceSize.size.height*0.05),
                           width: deviceSize.size.width*0.3,
                           height: deviceSize.size.height*0.13,
                           decoration: BoxDecoration(
                             image:DecorationImage(
                               image: AssetImage(fit.fitnessList[index]['picture'],
                               ),
                               fit: BoxFit.cover
                             ),
                               borderRadius: BorderRadius.circular(20.0),
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
                          
                         ),
                         SizedBox(width: deviceSize.size.width*0.01,),
                         RichText(
                           text: TextSpan(text: fit.fitnessList[index]['name'],
                             style: TextStyle(color: Color(0xff62819D),fontSize: 20.0,
                                 fontWeight: FontWeight.bold),
                             children: [
                               TextSpan(text: fit.fitnessList[index]['duration'],style: TextStyle(
                                   fontSize: 20.0,
                                   color: Colors.black12,
                                   fontWeight: FontWeight.bold
                               )),
                             ]
                         ),
                         ),
                         SizedBox(width: deviceSize.size.width*0.01,),
                         Container(
                           margin: EdgeInsets.only(top: deviceSize.size.height*0.05,right: deviceSize.size.width*0.03),
                           width: deviceSize.size.width*0.2,
                           height: deviceSize.size.height*0.08,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15.0),
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
                           child: IconButton(icon:Icon(Icons.play_arrow_rounded,size: 50.0,),),
                         ),
                       ],
                     );
                   }),
               ),
             ],
           ),
         ),
       )
    );
  }
}


