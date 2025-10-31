import 'package:http/http.dart' as http;

import 'classes/reqres.dart';
import 'classes/reqresCountry.dart';

void getReqRes_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    final currentResponse = reqResFromJson(res.body);

    print('page: ${currentResponse.page}');
    print('per_page: ${currentResponse.perPage}');
    print('id tercer el: ${currentResponse.data[2].id}');
  });
}

void getCountry_service() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');
  http.get(url).then((res) {
    final colCountry = countryFromJson(res.body);

    print('===========================');
    print('Pais: ${colCountry.name}');
    print('Población: ${colCountry.population}');
    print('Fronteras: ');
    for (var c in colCountry.borders) {
      print(' $c');
    }
    print('Languages: ${colCountry.languages[0].nativeName}');
    print('Latitud: ${colCountry.latlng[0]}');
    print('Longitud: ${colCountry.latlng[1]}');
    print('Moneda: ${colCountry.currencies[0].name}');
    print('Bandera: ${colCountry.flag}');
    print('===========================');
  });
}
