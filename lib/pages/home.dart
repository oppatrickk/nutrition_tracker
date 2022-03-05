import 'package:flutter/material.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const <Widget>[
            const Text("Nutrition App"),
          ],
        ),
      ),
    );
  }
}
