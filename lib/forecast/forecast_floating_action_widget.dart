import 'package:flutter/material.dart';

class ForecastFloatingActionWidget extends StatelessWidget{

  final VoidCallback onFloatingButtonPress;


  ForecastFloatingActionWidget({required this.onFloatingButtonPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){
          onFloatingButtonPress();
        },
        backgroundColor: Colors.white,
        child: Image.asset(
            "assets/images/air_quality_logo.png",
            height: 50,
            width: 50,
        ),
    );
  }

}