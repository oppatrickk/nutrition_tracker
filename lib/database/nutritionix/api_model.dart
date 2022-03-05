class NutritionixJson {
  String food;
  int calories;

  NutritionixJson({
    required this.food,
    required this.calories,

  });

  NutritionixJson.fromJson(Map<String, dynamic> json) {
    food = json['foods'];
    calories = json['calories'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['food'] = this.food;

    return data;
  }
}