import 'package:flutter/material.dart';
import 'package:nutrition_app/database/nutritionix/api_provider.dart';
import 'package:nutrition_app/database/nutritionix/api_service.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';
import 'package:nutrition_app/widgets/constant.dart';
import 'package:nutrition_app/widgets/statistic.dart';
import 'package:nutrition_app/widgets/calories_card.dart';

// Database

class CaloriesPage extends StatefulWidget {
  const CaloriesPage({Key? key}) : super(key: key);

  @override
  State<CaloriesPage> createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<FetchNutritionixDataProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: kPrimaryColor,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 25),
                    Text(
                      "1923",
                      style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "kcal left",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: kPrimaryColor,
            child: Row(
              children: [
                statistic(
                  title: "CARBS",
                  current: "0",
                  max: "69",
                ),
                statistic(
                  title: "PROTEIN",
                  current: "0",
                  max: "420",
                ),
                statistic(
                  title: "FAT",
                  current: "0",
                  max: "1337",
                ),
              ],
            ),
          ),
          // Items
          CaloriesCard(
            title: "Breakfast",
            food: "Apple",
            calories: "0/53 g",
          ),
          CaloriesCard(
            title: "Lunch",
            food: "Whole Roast Chicken",
            calories: "0/150 g",
          ),
          CaloriesCard(
            title: "Dinner",
            food: "Salad",
            calories: "0/100 g",
          ),
          CaloriesCard(
            title: "Snack",
            food: "Bread",
            calories: "0/33 g",
          ),
        ],
      ),
    );
  }
}
