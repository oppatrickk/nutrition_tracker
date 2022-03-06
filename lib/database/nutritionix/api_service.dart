import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// Database
import 'package:nutrition_app/database/nutritionix/api_model.dart';

class NutritionixApiService {
  List<NutritionixJson> nutritionList = [];

  Future<List<NutritionixJson>> getApiDataFromNutritionixJson() async {
    try {
      var res = await http.get(
          Uri.parse("https://api.calorieninjas.com/v1/nutrition?query=apple"),
          headers: {"X-Api-Key": "q+rn0YTIXmjXd7xbIiwvdw==ERTtuqghFpNT3WAw"}
      );
      var jsonResponse = convert.jsonDecode(res.body)['items'];
      print('Nutritionix API Successfully Loaded');
      var itemCount = jsonResponse;
      itemCount.forEach((e) {
        nutritionList.add(NutritionixJson.fromJson(e));
      });
      return nutritionList;
    } catch (e) {
      print('Error! API Failed to load $e');
      throw e;
    }
  }
}