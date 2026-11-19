import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:flutter_app_fenix/themes/app_theme.dart";
import 'package:flutter_app_fenix/widgets/app_footer.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("HOBBIES", style: theme.textTheme.titleLarge),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        children: const [
          _HobbyCard(
            title: "Meditación Volcánica",
            description: "Concentrar el cosmos en el interior de cráteres activos para templar la mente y resistir temperaturas extremas.",
            icon: FontAwesomeIcons.volcano,
          ),
          _HobbyCard(
            title: "Forja en las Cenizas",
            description: "Exponer la armadura del Fénix al fuego vivo para regenerar sus piezas y fortalecer su estructura tras cada batalla.",
            icon: FontAwesomeIcons.fire,
          ),
          _HobbyCard(
            title: "Intervención Estratégica",
            description: "Observar los combates desde las sombras y aparecer en el instante decisivo para respaldar a Shun y a los caballeros de bronce.",
            icon: FontAwesomeIcons.featherPointed,
          ),
          SizedBox(height: 8),
          AppFooter(),
        ],
      ),
    );
  }
}

class _HobbyCard extends StatelessWidget {
  final String title;
  final String description;
  final FaIconData icon;

  const _HobbyCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: AppTheme.cardBackgroundGradient,
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: AppTheme.iconGradient,
                borderRadius: BorderRadius.circular(10),
              ),

              child: FaIcon(icon, color: Colors.white, size: 22),
            ),

            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 6),
                  Text(description, style: theme.textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
