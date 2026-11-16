import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 255, 109, 0);
  static const Color secondaryColor = Color.fromARGB(255, 255, 213, 79);
  static const Color backgroundColor = Color.fromARGB(255, 9, 7, 16);
  static const Color surfaceColor = Color.fromARGB(255, 27, 22, 46);
  static const Color textSecondary = Color.fromARGB(255, 184, 181, 255);

  static const LinearGradient cardBorderGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 255, 171, 0),
      Color.fromARGB(255, 255, 61, 0),
      Color.fromARGB(255, 94, 74, 227),
    ],
  );

  static const LinearGradient cardBackgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [surfaceColor, Color.fromARGB(255, 16, 13, 28)],
  );

  static const LinearGradient iconGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, Color.fromARGB(255, 213, 0, 0)],
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      surfaceContainer: surfaceColor,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: TextTheme(
      titleLarge: GoogleFonts.cinzelDecorative(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: secondaryColor,
        letterSpacing: 2.2,
      ),

      titleMedium: GoogleFonts.cinzel(
        fontSize: 17,
        fontWeight: FontWeight.w800,
        color: Colors.white,
        letterSpacing: 1.4,
      ),

      bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      bodyMedium: GoogleFonts.roboto(fontSize: 13, color: textSecondary),
    ),
  );
}
