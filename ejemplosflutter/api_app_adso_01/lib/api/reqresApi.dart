import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = "https://reqres.in/api/";

Future obtenerUsuario() async {
  final response = await http.get(Uri.parse('https://reqres.in/api/users'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,// then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response, // then throw an exception.
    throw Exception('problema al obtener los usuarios');
  }
}
