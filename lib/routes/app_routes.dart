import "package:flutter/material.dart";
import "package:flutter_app_fenix/screens/home_screen.dart";
import "package:flutter_app_fenix/screens/developer_screen.dart";
import "package:flutter_app_fenix/screens/about_screen.dart";
import "package:flutter_app_fenix/screens/techniques_screen.dart";
import "package:flutter_app_fenix/screens/hobbies_screen.dart";

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      "home": (BuildContext context) => const HomeScreen(),
      "developer": (BuildContext context) => const DeveloperScreen(),
      "about": (BuildContext context) => const AboutScreen(),
      "techniques": (BuildContext context) => const TechniquesScreen(),
      "hobbies": (BuildContext context) => const HobbiesScreen(),
    };
  }
}
