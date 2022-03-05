import 'package:flutter/material.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const <Widget>[
            const Text("Exercise"),
          ],
        ),
      ),
    );
  }
}
