import 'package:flutter/material.dart';
import 'package:movie_app/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:movie_app/view/widgets/app_bottom_nav/app_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = "/mainpage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: BottomNavController.valueNotifier,
        builder: (context, int index, _) => BottomNavController.pages[index],
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
