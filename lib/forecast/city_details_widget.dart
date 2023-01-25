import 'dart:math';

import 'package:airqualityapp/base/application_constants.dart';
import 'package:airqualityapp/forecast/model/city_model.dart';
import 'package:airqualityapp/base/extensions.dart';
import 'package:airqualityapp/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CityDetailsWidget extends HookConsumerWidget{
  CityModel cityModel;


  CityDetailsWidget({required this.cityModel});

  String getTimeStamp(int timestamp){
    return timestamp.getUtcDate();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastNotifier = ref.watch(forecastDataProvider.notifier);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: ApplicationConstants.brownColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/location.png",
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 20,),
                Text(
                  "${forecastNotifier.stateName} in India",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/people.png",
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 20,),
                Text(
                  "Population : ${next(12000000, 24000000)}",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/sunrise.png",
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 20,),
                Text(
                  "Sunrise : ${getTimeStamp(cityModel.sunrise!)}",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  final _random = Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
}