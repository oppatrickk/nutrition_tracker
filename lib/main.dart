import 'package:flutter/material.dart';

// Database
import 'package:nutrition_app/database/nutritionix/api_provider.dart';

// Widgets
import 'package:nutrition_app/widgets/scroll_behavior.dart';
import 'package:nutrition_app/widgets/mainAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainAppBar()
    );
  }
}