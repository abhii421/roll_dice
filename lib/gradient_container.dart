import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_sec_2/dice_roller.dart';


//var a = Alignment.bottomCenter;
//var b = Alignment.topLeft;
//instead of directly mentioning the alignment of gradient, we create two
//variable so that they can be used again nd again, frst tym they were used at
//1 & 2


class GradientContainer extends StatelessWidget{
   GradientContainer({super.key});



@override
Widget build(context) {
return Container(
  height: double.infinity,
decoration : BoxDecoration(
gradient : LinearGradient(
colors : [Colors.yellowAccent.shade100.withOpacity(0.3),
  Colors.black12],
begin :  Alignment.bottomCenter,
end : Alignment.topLeft,
  //,color: Colors.white10
     )

)
    ,child : Center(
      child:DiceRoller()
    ),
  );

    }
}