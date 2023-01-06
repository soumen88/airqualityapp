import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_events.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../choosecountry/api/load_country_data.dart';

final apiProvider = Provider<LoadCountryData>((ref) => LoadCountryData());

final countryDataProvider = FutureProvider<CountryList?>((ref) async {
  return ref.read(apiProvider).getAllCountryList();
});

final pollutionAnalyzerProvider = StateNotifierProvider<PollutionAnalyzerStateNotifier, PollutionAnalyzerEvents>(
  (ref) => PollutionAnalyzerStateNotifier()
);
