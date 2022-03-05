import 'package:flutter/material.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';

class CaloriesPage extends StatefulWidget {
  const CaloriesPage({Key? key}) : super(key: key);

  @override
  State<CaloriesPage> createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const <Widget>[
            const Text("Calories"),
          ],
        ),
      ),
    );
  }
}
