import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:airqualityapp/choosestate/models/state_list.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_events.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_state_notifier.dart';
import 'package:airqualityapp/forecast/viewmodel/forecast_screen_events.dart';
import 'package:airqualityapp/forecast/viewmodel/forecast_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../choosecountry/api/load_country_data.dart';

final apiProvider = Provider<LoadCountryData>((ref) => LoadCountryData());

final countryDataProvider = FutureProvider<CountryList?>((ref) async {
  return ref.read(apiProvider).getAllCountryList();
});

final stateDataProvider = FutureProvider<StateList?>((ref) async {
  return ref.read(apiProvider).getAllStatesList();
});

final pollutionAnalyzerProvider = StateNotifierProvider<PollutionAnalyzerStateNotifier, PollutionAnalyzerEvents>(
  (ref) => PollutionAnalyzerStateNotifier()
);

final forecastDataProvider = StateNotifierProvider<ForecastStateNotifier, ForecastScreenEvents>(
  (ref) => ForecastStateNotifier()
);
