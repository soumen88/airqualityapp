import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:airqualityapp/choosestate/models/state_list.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'choose_country_repository.dart';

class LoadCountryData {
  final _TAG = "LoadCountrydata";
  final _logger = locator<LoggerUtils>();

  Future<CountryList?> getAllCountryList() async{
      ChooseCountryRepository chooseCountryRepository = ChooseCountryRepository();
      CountryList? countryList = null;
      final countryListResponse = await chooseCountryRepository.getCountryList();
      countryListResponse.fold(
         (exception){
            return null;
         },
         (response){
           _logger.log(_TAG, "Converting Country data");
           var countryData = CountryList.fromJson(response?.data ?? "");
           countryList = countryData;
         }
      );

      return countryList;
  }

  Future<StateList?> getAllStatesList() async{
    ChooseCountryRepository chooseCountryRepository = ChooseCountryRepository();
    StateList? stateList = null;
    final stateListResponse = await chooseCountryRepository.getStateList();
    stateListResponse.fold(
            (exception){
          return null;
        },
            (response){
          _logger.log(_TAG, "Converting Country data");
          var stateData = StateList.fromJson(response?.data ?? "");
          stateList = stateData;
        }
    );

    return stateList;
  }
}