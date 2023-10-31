import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tes/app/modules/home/Models/Model.dart';

class ApiService {
  final String apiUrl = "https://jsonplaceholder.typicode.com/todos/5";

  Future<Model> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      Model model = Model.fromJson(data);
      return model;
    } else {
      throw Exception('Failed to load data');
    }
  }
}