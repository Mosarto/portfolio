import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/widgets/custom_experiencias_card.dart';

class Experiencias extends StatelessWidget {
  const Experiencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomExperienciasCard(
          imagePath: 'assets/png/sysfar.png',
          title: '2020-2023 - Sysfar',
        )
            .animate()
            .fade(
              begin: 0,
              delay: 200.ms,
              duration: 2000.ms,
            )
            .shimmer()
            .move(
              begin: const Offset(-100, 0),
              end: const Offset(0, 0),
              delay: 500.ms,
              duration: 2000.ms,
            ),
        const SizedBox(width: 40),
        const CustomExperienciasCard(
          imagePath: 'assets/png/foster.png',
          title: '2019 - Estúdio Foster',
        )
            .animate()
            .fade(
              begin: -1,
              delay: 1600.ms,
              duration: 2000.ms,
            )
            .shimmer()
            .move(
              begin: const Offset(-100, 0),
              end: const Offset(0, 0),
              delay: 1600.ms,
              duration: 2000.ms,
            ),
      ],
    );
  }
}
