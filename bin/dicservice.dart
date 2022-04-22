import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'dicmodel.dart';

class dicservice {
  getdata() async {
    var url = Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/dark');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final dicmodel dmp = dicmodel.frommap(convert.jsonDecode(response.body));

      return dmp;
      // print(dmp.meaning);
    } else {
      print('Request failed with status: ');
    }
  }
}
