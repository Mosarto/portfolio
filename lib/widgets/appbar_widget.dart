import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/data/data.dart';

class AppBarWidget extends StatelessWidget {
  final ScrollController scrollControllerOne;
  const AppBarWidget({
    super.key,
    required this.scrollControllerOne,
  });

  ScrollController get _scrollControllerOne => scrollControllerOne;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return constraints.maxWidth > 1245
            ? Row(
                children: [
                  TextButton(
                    onPressed: () {
                      _scrollControllerOne.animateTo(
                        800,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInSine,
                      );
                    },
                    child: const Text(
                      'Experiencia',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 68),
                  TextButton(
                    onPressed: () {
                      _scrollControllerOne.animateTo(
                        1600,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInSine,
                      );
                    },
                    child: const Text(
                      'Projetos',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 68),
                  TextButton(
                    onPressed: () {
                      _scrollControllerOne.animateTo(
                        3400,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInSine,
                      );
                    },
                    child: const Text(
                      'Contato',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      launchLinkedin();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/linkedin.svg',
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      launchGithub();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/github.svg',
                    ),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchLinkedin();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/linkedin.svg',
                    ),
                  ),
                  const SizedBox(width: 32),
                  InkWell(
                    onTap: () {
                      launchGithub();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/github.svg',
                    ),
                  ),
                ],
              );
      },
    );
  }
}
