import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GetCustomButton extends HookWidget{
  final VoidCallback onButtonPress;
  final String buttonText;

  GetCustomButton({required this.onButtonPress, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            primary:Colors.deepOrange
        ),
        onPressed: () {
          ///Once button is pressed then callback is passed
          onButtonPress();
        },
        child: Text("$buttonText", style: TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }

}