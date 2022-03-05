import 'package:flutter/material.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';
import 'package:nutrition_app/widgets/constant.dart';

class CaloriesPage extends StatefulWidget {
  const CaloriesPage({Key? key}) : super(key: key);

  @override
  State<CaloriesPage> createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 125,
        width: double.infinity,
        color: kPrimaryColor,
        child: Text(
          "1000 kCal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
