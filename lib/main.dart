import 'package:flutter/material.dart';
import 'package:flutter_app_fenix/themes/app_theme.dart';
import 'package:flutter_app_fenix/routes/app_routes.dart';

void main() {
  runApp(const PortafolioFenix());
}

class PortafolioFenix extends StatelessWidget {
  const PortafolioFenix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ikki Portafolio",
      theme: AppTheme.darkTheme,
      initialRoute: "welcome",
      routes: AppRoutes.getRoutes(),
    );
  }
}
