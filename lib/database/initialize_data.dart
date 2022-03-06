import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Database
import 'package:nutrition_app/database/nutritionix/api_service.dart';
import 'package:nutrition_app/database/nutritionix/api_provider.dart';

// Widgets
import 'package:nutrition_app/widgets/mainAppBar.dart';
import 'package:nutrition_app/widgets/constant.dart';

class LoadingData extends StatefulWidget {
  @override
  _LoadingDataState createState() => _LoadingDataState();
}

class _LoadingDataState extends State<LoadingData> {
  NutritionixApiService nutritionixApiService= NutritionixApiService();

  @override
  Widget build(BuildContext context) {
    Provider.of<FetchNutritionixDataProvider>(context);

    final provider = Provider.of<FetchNutritionixDataProvider>(context);

    return Scaffold(
      body: provider.loading == true
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GlowingProgressIndicator(
              child: HeartbeatProgressIndicator(
                child: FaIcon(FontAwesomeIcons.fire,
                    size: 34,
                    color: kPrimaryColor),
              ),
            ),
            SizedBox(height: 34),
            Text(
              "Loading Data",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      )
          : MainAppBar(),
    );
  }
}