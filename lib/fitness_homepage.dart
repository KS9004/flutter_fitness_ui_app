import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slider_button/slider_button.dart';
import 'package:get/get.dart';

import 'fitness.dart';

// ignore: must_be_immutable
class FitnessHome extends StatelessWidget {
  RxBool value = false.obs;

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
                    Icon(Icons.dashboard_outlined,size:50.0,),
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
                    RichText(text: TextSpan(text: "Statistics",
                        style: TextStyle(color: Colors.black,fontSize: 50.0),

                    ),
                    ),
                    Container(
                      width: deviceSize.size.width*0.2,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(40.0),
                      //     gradient: LinearGradient(
                      //         begin: Alignment(-1.0, -4.0),
                      //         end: Alignment(1.0, 4.0),
                      //         colors: [
                      //           Color(0xfff5ffff),
                      //           Color(0xffced9e1)
                      //         ]
                      //     ),
                      //     boxShadow: [
                      //       BoxShadow(
                      //           offset: Offset(15, 15),
                      //           color: Color(0xffc3cdd5),
                      //           blurRadius: 15,
                      //           spreadRadius: 1.0
                      //       ),
                      //       BoxShadow(
                      //         offset: Offset(-15, -15),
                      //         color: Color(0xffffffff),
                      //         blurRadius: 25,
                      //         spreadRadius: 1.0,
                      //       ),
                      //     ]
                      // ),
                      child: Obx(()
                       => NeumorphicSwitch(
                          onChanged:(_){
                            Get.to(Fitness());
                            value.value =true;
                          },
                          value: value.value,
                          curve:Neumorphic.DEFAULT_CURVE,
                          height: 40,
                         isEnabled: true,
                          duration: Duration(seconds: 2),
                          style: NeumorphicSwitchStyle(
                            inactiveTrackColor: Colors.black26
                          ),
                          ),
                      ),
                      ),


                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(150)),
                          depth: 5,
                          intensity: 10,

                          lightSource: LightSource.topLeft,
                          color: Color(0xffE4EFFA)),
                      child: Container(
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(150)),
                          depth: 4,

                          color: Color(0xffD8E9F4)),
                      child: Container(

                        width: 150,
                        height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            child: ,
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
