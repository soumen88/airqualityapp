import 'package:airqualityapp/choosecountry/models/country_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'country_api_provider.dart';

final countryDataProvider = FutureProvider<CountryList?>((ref) async {
  return ref.read(apiProvider).getAllCountryList();
});