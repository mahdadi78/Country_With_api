import 'dart:async';
import 'package:basketball_court/MODELS/person_model.dart';
import 'package:http/http.dart' as http;
import 'package:basketball_court/MODELS/all_countris_model.dart';

class Service {
  Future<List<CountryModel>> getCountry() async {
    try {
      var response = await http
          .get(Uri.parse('https://restcountries.com/v3.1/all'))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException('connection time out try agian');
      });

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var countryModelFromeJson = allCountriesFromJson(jsonString);
        return countryModelFromeJson;
      } else {
        return [];
      }
    } on TimeoutException catch (_) {
      return [];
    }
  }

  Future<List<User>> getUser() async {
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException('connection time out try agian');
      });

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonDecode = personFromJson(jsonString);
        return jsonDecode;
      } else {
        return [];
      }
    } on TimeoutException catch (_) {
      return [];
    }
  }
}
