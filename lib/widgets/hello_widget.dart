import 'package:flutter/material.dart';
import 'package:portfolio/container/sobre.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Olá',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff0EE6B7),
                fontSize: 58,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Eu sou o Lucas,',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 58,
                fontWeight: FontWeight.w700,
              ),
            ),
            Stack(
              children: [
                Text(
                  'Desenvolvedor ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 58,
                    fontWeight: FontWeight.w700,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = const Color(0xff0EE6B7),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        const Expanded(
          flex: 3,
          child: Sobre(),
        ),
      ],
    );
  }
}
