import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

// Database
import 'package:nutrition_app/database/nutritionix/api_provider.dart';
import 'package:nutrition_app/database/initialize_data.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FetchNutritionixDataProvider>(
            create: (_) => FetchNutritionixDataProvider()
        ),
      ],
      child: MaterialApp(
        title: 'Nutrition App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        home: Scaffold(
            body: LoadingData()
        ),
      ),
    );
  }
}