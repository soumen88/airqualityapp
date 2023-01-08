import 'package:airqualityapp/base/application_constants.dart';
import 'package:flutter/material.dart';

class StateDisplayCard extends StatelessWidget{
  String name;
  final Function(String name) stateSelected;
  StateDisplayCard({required this.name, required this.stateSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        stateSelected(name);
      },
      child: Card(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          //set border radius more than 50% of height and width to make circle
        ),
        color: ApplicationConstants.greenColor,
        child: Row(
          children: [
            SizedBox(width: 10,),
            Image.asset(
              "assets/images/location.png",
              height: 80,
              width: 80,
            ),
            SizedBox(width: 20,),
            Text(
              name,
              style: TextStyle(
                  fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }

}