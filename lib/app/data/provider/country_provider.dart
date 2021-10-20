import 'dart:convert';

import 'package:worki/app/data/models/country_model.dart';
import 'package:worki/app/data/services/api_request.dart';

class CountryProvider {
  void getCountryMap({
    Function()? beforeSend,
    //Function(Map<int, CountryModel>)? onSuccess,
    Function(List<CountryModel>)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(path: 'summary').get(
      beforeSend: () => {
        if (beforeSend != null) beforeSend(),
      },
      onSuccess: (data) {
        var countryJson = data['Countries'] as List;

        List<CountryModel> country = countryJson
            .map(
                (countryJson) => CountryModel.fromJson(jsonEncode(countryJson)))
            .toList();

        country.sort((a, b) => -a.totalConfirmed!.compareTo(b.totalConfirmed!));

        for (var i = 0; i < country.length; i++) {
          country[i].position = i + 1;
        }

        return onSuccess!(country);
      },
      onError: (error) => {
        if (onError != null) onError(error),
      },
    );
  }
}
