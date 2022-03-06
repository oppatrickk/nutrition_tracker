import 'package:flutter/material.dart';
import 'package:nutrition_app/widgets/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';
import 'package:nutrition_app/widgets/exercise_card.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 125,
            width: double.infinity,
            color: kPrimaryColor,
            alignment: Alignment.center,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "169 kcal to burn",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            height: 75,
            width: double.infinity - 0.2,
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(64.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Icon(
                          FontAwesomeIcons.search,
                          size: 18,
                          color: Colors.black.withOpacity(0.8),
                      )
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Search for Exercise",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ExerciseCard(
            title: "10-minute jog",
            desc: "100kcal ~ 10 minutes",
            icon: FontAwesomeIcons.solidTimesCircle,
          ),
          ExerciseCard(
            title: "High Aerobics Exercise",
            desc: "69 kcal ~ 30 minutes",
            icon: FontAwesomeIcons.solidTimesCircle,
          ),
        ],
      ),
    );
  }
}