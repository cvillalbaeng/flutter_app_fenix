import "package:flutter/material.dart";
import "package:percent_indicator/percent_indicator.dart";
import "package:flutter_app_fenix/models/attack_model.dart";
import "package:flutter_app_fenix/themes/app_theme.dart";
import "package:flutter_app_fenix/widgets/app_footer.dart";

class TechniquesScreen extends StatelessWidget {
  const TechniquesScreen({super.key});

  final List<AttackModel> tecnicas = const [
    AttackModel(
      name: "Puño Fantasma del Fénix",
      description: "Se trata de un ataque de tipo mental, que destruye el sistema nervioso del oponente haciéndole ver sus peores miedos.",
      imageAsset: "assets/images/fantasma.png",
      category: "Técnica Oficial (Canon)",
      powerLevel: 90,
      saga: "Clásica / Todas",
    ),
    AttackModel(
      name: "Vuelo del Fénix",
      description: "Es su ataque físico y energético principal. Libera una ráfaga de cosmos ardiente y viento con forma de ave fénix que impacta a gran velocidad.",
      imageAsset: "assets/images/vuelo.png",
      category: "Técnica Oficial (Canon)",
      powerLevel: 95,
      saga: "Clásica / Todas",
    ),
    AttackModel(
      name: "Lanzamiento de Plumas",
      description: "Ikki arranca las plumas de la cola de su armadura para usarlas como proyectiles afilados a distancia.",
      imageAsset: "assets/images/plumas.png",
      category: "Recurso de Combate",
      powerLevel: 65,
      saga: "Clásica / Todas",
    ),
    AttackModel(
      name: "Autodestrucción Cósmica",
      description: "Recurso ofensivo extremo donde Ikki eleva su cosmos hasta el límite para provocar una explosión masiva junto con su oponente.",
      imageAsset: "assets/images/explosion.png",
      category: "Recurso de Combate",
      powerLevel: 100,
      saga: "Clásica / Todas",
    ),
    AttackModel(
      name: "Lava del Fénix",
      description: "Tras portar la Armadura Dorada de Leo, sus llamas evolucionan hacia un ataque de magma cósmico devastador.",
      imageAsset: "assets/images/lava.png",
      category: "Técnica Evolutiva",
      powerLevel: 98,
      saga: "Episode.G: Requiem",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("TÉCNICAS DE COMBATE", style: theme.textTheme.titleLarge),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colors.primary),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        itemCount: tecnicas.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == tecnicas.length) {
            return const Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: AppFooter(),
            );
          }

          final ataque = tecnicas[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 18.0),
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
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: AppTheme.cardBackgroundGradient,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ataque.name, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 6),
                  Text(
                    '${ataque.category} | ${ataque.saga}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const Divider(
                    color: AppTheme.textSecondary,
                    height: 24,
                    thickness: 0.3,
                  ),
                  Text(ataque.description, style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 20),
                  Text(
                    "NIVEL DE PODER CÓSMICO",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1200,
                    lineHeight: 12.0,
                    padding: EdgeInsets.zero,
                    percent: ataque.powerLevel / 100,
                    barRadius: const Radius.circular(6),
                    backgroundColor: AppTheme.backgroundColor,
                    linearGradient: AppTheme.iconGradient,
                    trailing: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        '${ataque.powerLevel}%',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
