import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_menu_toturial/pages/home_page.dart';
import 'package:hidden_menu_toturial/pages/profile_page.dart';
import 'package:hidden_menu_toturial/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<ScreenHiddenDrawer> _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.yellow,
          name: 'HOME',
          baseStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          selectedStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow.shade700,
            fontStyle: FontStyle.italic,
          ),
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.red.shade900,
          name: 'SETTINGS',
          baseStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          selectedStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SettingsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.deepPurple.shade900,
          name: 'PROFILE',
          baseStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          selectedStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple.shade900,
            fontStyle: FontStyle.italic,
          ),
        ),
        const ProfilePage(),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawerMenu(
        typeOpen: TypeOpen.FROM_LEFT,
        styleAutoTittleName: const TextStyle(
          decorationColor: Colors.white,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        withAutoTittleName: true,
        backgroundColorAppBar: Colors.white,
        backgroundColorContent: Colors.white,
        elevationAppBar: 0,
        screens: _pages,
        backgroundColorMenu: Colors.white,
      ),
    );
  }
}
