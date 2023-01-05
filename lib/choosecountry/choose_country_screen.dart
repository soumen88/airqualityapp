import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/choosecountry/models/country_data.dart';
import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/loading/loading_widget.dart';
import 'package:airqualityapp/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseCountryScreen extends HookConsumerWidget{
  final _TAG = "ChooseCountryScreen";
  final _logger = locator<LoggerUtils>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _countryData = ref.watch(countryDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Country List"),
      ),
      body: _countryData.when(
          data: (CountryList? countryList){
            _logger.log(_TAG, "Country list data $countryList");
            if(countryList != null && countryList.countryData!.isNotEmpty){

              return ListView.builder(
                  itemCount: countryList.countryData!.length,
                  itemBuilder: (BuildContext context, int index){
                    CountryData currentCountry = countryList.countryData![index];
                    return Text("Country name : ${currentCountry.countryName}");
                  }
              );
            }
            else{
              return Text("Error occurred because data is null");
            }
          },
          error: (dynamic errObj, StackTrace stackTrace){
            return Text("inside error");
          },
          loading: (){
            return LoadingWidget();
          }
      ),
    );
  }

}