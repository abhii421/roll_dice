import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:audioplayers/audioplayers.dart';
 //var movingcube;
final randomiser = Random();
var CurrentDiceRoll = 3;
class DiceRoller extends StatefulWidget {
  //instead of build method, createstate method will be used
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

  class _DiceRollerState extends State<DiceRoller> {
  //var movingcube = 'assets/images/dice-1.png';



  void rollDice(){
    //var DiceRoll = Random().nextInt(6)+1;
    CurrentDiceRoll = randomiser.nextInt(6)+1;
    setState(() {
      //movingcube = 'assets/images/dice-$CurrentDiceRoll.png';
      //why to create an extra variable 'moving cube' here
      //directly img.asset me  random value dilwa do with random number wala variable(CUrrentDIceRoll)
      //CurrentDiceRoll = Random().nextInt(6)+1;
    });

  // print('demo check for if the function is being called or not');
  }


    @override
    Widget build(context){
          return Column(
          //mainAxisSize: MainAxisSize.min,
          children: [
          Padding(
          padding: const EdgeInsets.only(top : 180),
          child: Image.asset('assets/images/dice-$CurrentDiceRoll.png',
          width : 195
          ),
          ),
//'assets/images/dice-$CurrentDiceRoll.png',
//           OutlinedButton(onPressed:rollDice,
//           style: TextButton.styleFrom(
//             padding: EdgeInsets.only(top : 15),
//             foregroundColor: Colors.black,
//             textStyle: TextStyle(fontSize : 28)
//           ) ,
//           child: Text('roll dice')
// )

          Padding(
          padding: const EdgeInsets.only(top : 208),
            child: ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: StadiumBorder()),
              onPressed : (){rollDice();
              // final player = AudioCache();
              // player.play('rollingdice.mp3');
      },
            child: const Text('  Roll it!  ', style: TextStyle(fontSize: 32, fontFamily: 'Schyler'),),



  ),
  )
  ],
  );
  }
  }
