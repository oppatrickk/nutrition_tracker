import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/widgets/constant.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';
import 'package:nutrition_app/pages/exercise.dart';
import 'package:nutrition_app/pages/diet.dart';

// Widgets
import 'package:nutrition_app/widgets/mainDrawer.dart';


class MainAppBar extends StatefulWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  late PageController _pageController;
  int _page = 0;
  Duration pageChanging = Duration(milliseconds: 300);
  Curve animationCurve = Curves.linear;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: 25,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        elevation: 0,
        leadingWidth: 50,
        toolbarHeight: 50,
        actions: <Widget>[],
        backgroundColor: kPrimaryColor,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          CaloriesPage(),
          DietPage(),
          ExercisePage(),
        ],
      ),
      endDrawer: BaseDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor.withOpacity(.3),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _page,
        elevation: 2,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Calories',
            icon: Icon(FontAwesomeIcons.fire),
          ),
          BottomNavigationBarItem(
            label: 'Diet',
            icon: Icon(FontAwesomeIcons.appleAlt),
          ),
          BottomNavigationBarItem(
            label: 'Exercise',
            icon: Icon(FontAwesomeIcons.running),
          ),
        ],
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(
      page,
      duration: pageChanging,
      curve: animationCurve,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    if (this.mounted) {
      setState(() {
        this._page = page;
      });
    }
  }
}

