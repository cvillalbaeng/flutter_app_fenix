import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app_fenix/themes/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("SOBRE MÍ", style: theme.textTheme.titleLarge),
        ),

        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colors.primary),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: AppTheme.iconGradient,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: const FaIcon(
                    FontAwesomeIcons.featherPointed,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 14),
                Text("¿QUIÉN SOY?", style: theme.textTheme.titleMedium),
              ],
            ),

            const SizedBox(height: 18),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: AppTheme.cardBorderGradient,
                boxShadow: [
                  BoxShadow(
                    color: colors.primary.withValues(alpha: 0.2),
                    blurRadius: 14,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: AppTheme.cardBackgroundGradient,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ikki de Fénix", style: theme.textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(
                      "Caballero de Bronce | Isla de la Reina Muerte",
                      style: theme.textTheme.bodyMedium,
                    ),

                    const Divider(
                      color: AppTheme.textSecondary,
                      height: 28,
                      thickness: 0.3,
                    ),

                    Text(
                      "Entrenado en el infierno volcánico de la Isla de la Reina Muerte, donde la supervivencia forjó mi cosmos. Mi armadura posee la capacidad única de renacer de sus propias cenizas tras cada combate.\n\nAunque prefiero actuar en solitario lejos del Santuario, mi lealtad hacia Athena y mi hermano Shun me lleva a intervenir en las batallas más críticas.",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
