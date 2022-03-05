import 'package:flutter/material.dart';

// Database
import 'package:nutrition_app/database/nutritionix/api_model.dart';
import 'package:nutrition_app/database/nutritionix/api_service.dart';

class FetchNutritionixDataProvider with ChangeNotifier{
  List<NutritionixJson> nutrition = [];
  bool loading = false;
  NutritionixApiService nutritionixApiService = NutritionixApiService();

  int index = 0;

  FetchNutritionixDataProvider() {
    initialize();
    print('Nutritionix: Data Provided');
  }

  Future<void> initialize() async {
    print('Nutritionix: Initialized');

    await getDataFromInternet();
  }

  increaseIndex() {
    index++;
    notifyListeners();
  }

  decreaseIndex() {
    index--;
    if (index.isNegative) {
      index = 0;
    }
    notifyListeners();
  }

  getDataFromInternet() async {
    print('Nutritionix: Data Retrieved');

    loading = true;
    nutrition = await nutritionixApiService.getApiDataFromNutritionixJson();
    loading = false;
    notifyListeners();
  }

}