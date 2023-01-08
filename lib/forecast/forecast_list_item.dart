import 'package:airqualityapp/forecast/model/forecast_list_model.dart';
import 'package:airqualityapp/forecast/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:airqualityapp/base/extensions.dart';
import '../base/application_constants.dart';

class ForecastListItem extends StatelessWidget{
  ForecastListModel forecastListModel;

  ForecastListItem({required this.forecastListModel});

  String getCurrentDate(String timeStamp){
    return timeStamp.getFormattedDate();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: ApplicationConstants.greenColor,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  "http://openweathermap.org/img/w/${forecastListModel.weatherModelList!.first.icon}.png",
                ),
                Text(getCurrentDate(forecastListModel.currentTimestamp!))
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                    "${forecastListModel.weatherModelList!.first.weatherType!}, ${forecastListModel.weatherModelList!.first.description!}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                ),
                Text("Max : ${forecastListModel.weatherMain!.maxTemperature!}, Min : ${forecastListModel.weatherMain!.minTemperature!}"),
                Text("Current : ${forecastListModel.weatherMain!.temp!}")
              ],
            )
          ],
        ),
      ),
    );
  }

}