import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'choose_country_repository.dart';

class LoadCountryData {
  final _TAG = "LoadCountrydata";
  final _logger = locator<LoggerUtils>();

  Future<CountryList?> getAllCountryList() async{
      _logger.log(_TAG, "Now going to load data");
      ChooseCountryRepository chooseCountryRepository = ChooseCountryRepository();
      CountryList? countryList = null;
      final countryListResponse = await chooseCountryRepository.getCountryList();
      _logger.log(_TAG, "After getting response $countryListResponse");
      countryListResponse.fold(
         (exception){
            _logger.log(_TAG, "Exception occurred $exception");
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
}