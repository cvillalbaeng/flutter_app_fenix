import "package:flutter/material.dart";
import "package:flutter_app_fenix/themes/app_theme.dart";

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: Column(
        children: [
          Divider(
            color: AppTheme.textSecondary.withValues(alpha: 0.3),
            thickness: 0.5,
          ),

          const SizedBox(height: 12),
          Text(
            "© 2026 Santuario del Fénix\nDesarrollado por Christian Villalba\nIngeniería de Sistemas",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
