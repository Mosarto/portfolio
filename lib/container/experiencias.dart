import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/widgets/custom_experiencias_card.dart';

class Experiencias extends StatefulWidget {
  const Experiencias({super.key});

  @override
  State<Experiencias> createState() => _ExperienciasState();
}

class _ExperienciasState extends State<Experiencias>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 32,
      childAspectRatio: 1.5,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const CustomExperienciasCard(
          imagePath: 'assets/png/sysfar.png',
          title: 'Sysfar',
          subtitle: '2020-2023',
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
        const CustomExperienciasCard(
          imagePath: 'assets/png/foster.png',
          title: 'Estúdio Foster',
          subtitle: '2019-2020',
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
