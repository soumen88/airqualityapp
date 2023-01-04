import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class LoadingWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
            child: SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                strokeWidth: 6,
              ),
            )
        )
    );
  }

}