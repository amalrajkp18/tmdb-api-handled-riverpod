import 'package:flutter/material.dart';
import 'package:movie_app/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:movie_app/view/widgets/app_bottom_nav/salmon_bottom_bar_package.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: BottomNavController.valueNotifier,
        builder: (context, int index, _) {
          return SalomonBottomBar(
            currentIndex: BottomNavController.valueNotifier.value,
            selectedItemColor: Colors.white,
            onTap: (int index) {
              BottomNavController.valueNotifier.value = index;
            },
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home"),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.bookmarks_outlined),
                title: const Text("Saved"),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.search),
                title: const Text("Search"),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                title: const Text("User"),
              )
            ],
          );
        });
  }
}
