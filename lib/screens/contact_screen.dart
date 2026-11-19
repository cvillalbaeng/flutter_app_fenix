import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:flutter_app_fenix/themes/app_theme.dart";
import 'package:flutter_app_fenix/widgets/app_footer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "CONTACTA O DEJA TU COMENTARIO",
            style: theme.textTheme.titleLarge,
          ),
        ),

        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colors.primary),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          Container(
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
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: AppTheme.cardBackgroundGradient,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DEJA TU MENSAJE", style: theme.textTheme.titleMedium),
                  const SizedBox(height: 6),
                  Text(
                    "Envía un mensaje al Santuario del Fénix",
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 16),
                  TextField(
                    maxLines: 4,
                    style: theme.textTheme.bodyLarge,
                    decoration: InputDecoration(
                      hintText: "Escribe tu comentario aquí...",
                      hintStyle: theme.textTheme.bodyMedium,
                      filled: true,
                      fillColor: AppTheme.backgroundColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppTheme.textSecondary.withValues(alpha: 0.3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: colors.primary),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.paperPlane,
                        color: Colors.white,
                        size: 16,
                      ),

                      label: Text("ENVIAR", style: theme.textTheme.bodyLarge),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 12,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60),
          const AppFooter(),
        ],
      ),
    );
  }
}
