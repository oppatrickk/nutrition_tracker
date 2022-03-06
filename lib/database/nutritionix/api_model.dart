class NutritionixJson {
  String name;
  double calories;

  NutritionixJson({
    required this.name,
    required this.calories,

  });

  NutritionixJson.fromJson(Map<String, dynamic> json)
      :
        name = json['name'],
        calories = json['calories'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'calories': calories,
  };
}