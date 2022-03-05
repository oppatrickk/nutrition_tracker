import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// Database
import 'package:nutrition_app/database/nutritionix/api_model.dart';

class NutritionixApiService {
  List<NutritionixJson> nutritionList = [];

  Future<List<NutritionixJson>> getApiDataFromNutritionixJson() async {
    try {
      var res = await http.get(
          Uri.parse("https://trackapi.nutritionix.com/v2"),
          headers: {"1e8573c3": "5f6cb3db2c7243ae2eb0967cc0e6bff9"});
      var jsonResponse = convert.jsonDecode(res.body);
      print('Nutritionix API Successfully Loaded');
      var itemCount = jsonResponse;
      itemCount.forEach((e) {
        nutritionList.add(NutritionixJson.fromJson(e));
      });
      return nutritionList;
    } catch (e) {
      print('Error! API Failed to load $e');

    }
  }
}