import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:flutter_app_fenix/themes/app_theme.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("SANTUARIO DEL FÉNIX", style: theme.textTheme.titleLarge),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "developer");
            },
            icon: FaIcon(FontAwesomeIcons.shieldHalved),
            color: theme.colorScheme.primary,
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 245,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.1),
                colors: [
                  Color.fromARGB(255, 255, 109, 0),
                  Color.fromARGB(255, 158, 27, 0),
                  Color.fromARGB(255, 35, 17, 43),
                  Color.fromARGB(255, 9, 7, 16),
                ],
                stops: [0.0, 0.3, 0.7, 1.0],
                radius: 0.9,
              ),
            ),
            child: Image.asset(
              "assets/images/ikkiFenix.png",
              fit: BoxFit.contain,
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              children: [
                _MenuButton(
                  title: "SOBRE MÍ",
                  subtitle: "¿Quién soy?",
                  icon: FontAwesomeIcons.featherPointed,
                  onTap: () {
                    Navigator.pushNamed(context, "about");
                  },
                ),

                _MenuButton(
                  title: "¿QUÉ HAGO?",
                  subtitle: "Técnicas y Recursos de Combate",
                  icon: FontAwesomeIcons.fireFlameCurved,
                  onTap: () {
                    Navigator.pushNamed(context, "techniques");
                  },
                ),

                _MenuButton(
                  title: "HOBBIES",
                  subtitle: "Entrenamiento y Meditación",
                  icon: FontAwesomeIcons.yinYang,
                  onTap: () {},
                ),
                _MenuButton(
                  title: "CONTACTO",
                  subtitle: "Deja tu mensaje",
                  icon: FontAwesomeIcons.scroll,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final FaIconData icon;
  final VoidCallback onTap;

  const _MenuButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: AppTheme.cardBorderGradient,
        boxShadow: [
          BoxShadow(
            color: colors.primary.withValues(alpha: 0.22),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: AppTheme.cardBackgroundGradient,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: AppTheme.iconGradient,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: colors.primary.withValues(alpha: 0.4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: FaIcon(icon, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: theme.textTheme.titleMedium),
                        const SizedBox(height: 4),
                        Text(subtitle, style: theme.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: colors.secondary,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
