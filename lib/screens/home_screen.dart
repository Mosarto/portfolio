import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/container/experiencias.dart';
import 'package:portfolio/container/sobre.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/widgets/custom_gradient_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollControllerOne;

  @override
  void initState() {
    _scrollControllerOne = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _scrollControllerOne.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1E22),
      body: CustomGradientBackground(
        child: ListView(
          controller: _scrollControllerOne,
          padding: const EdgeInsets.symmetric(
            horizontal: 138.0,
            vertical: 30,
          ),
          children: [
            Row(
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
            ),
            const SizedBox(height: 120),
            Row(
              children: [
                Expanded(
                  child: Column(
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
                        'Eu sou o Lucas Mosart,',
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
                            'Desenvolvedor Flutter.',
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
                ),
                const SizedBox(
                  width: 20,
                ),
                const Sobre(),
              ],
            ),
            const SizedBox(height: 260),
            const Text(
              'Experiencia',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 80),
            const Experiencias(),
            const SizedBox(height: 260),
            const Text(
              'Ultimos Projetos',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 80),
            // const Projetos(),
            SizedBox(
              height: 424,
              child: Row(
                children: [
                  Container(
                    height: 424,
                    width: 662,
                    decoration: BoxDecoration(
                      color: const Color(0xff0d0b1c),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/png/cryptoboard.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 106),
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'CryptoBoard',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'Implementei uma interface para um Cryptocurrency Dashboard em Flutter, seguindo um design profissional do designer no Figma. O resultado foi uma interface elegante e moderna, com alto nível de qualidade e atenção aos detalhes.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              launchCryptoboard();
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              width: 260,
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff0EE6B7),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  SvgPicture.asset(
                                      'assets/svg/arrow_right.svg'),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
                .animate()
                .fade(
                  begin: 0,
                  delay: 0.ms,
                  duration: 2200.ms,
                )
                .move(
                  begin: const Offset(-200, 0),
                  end: const Offset(0, 0),
                  duration: 2000.ms,
                ),
            const SizedBox(height: 134),
            SizedBox(
              height: 424,
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Gyme',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'Criei uma landing page em Flutter para o serviço de treinamento físico GYME, com base em um design profissional do Figma. Com habilidades em animações e atenção aos detalhes, criei uma interface elegante e moderna que oferece uma experiência intuitiva e envolvente aos usuários.',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              launchGyme();
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              width: 260,
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff0EE6B7),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  SvgPicture.asset(
                                      'assets/svg/arrow_right.svg'),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 106),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/png/gyme.png',
                      width: 660,
                    ),
                  ),
                ],
              ),
            )
                .animate()
                .fade(
                  begin: 0,
                  delay: 0.ms,
                  duration: 2200.ms,
                )
                .move(
                  begin: const Offset(200, 0),
                  end: const Offset(0, 0),
                  duration: 2000.ms,
                ),
            const SizedBox(height: 134),
            SizedBox(
              height: 424,
              child: Row(
                children: [
                  Container(
                    height: 424,
                    width: 662,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xffda0037),
                        Color.fromARGB(255, 122, 0, 31),
                      ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/png/webtoonapp2.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/png/webtoonapp.jpg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/png/webtoonapp3.jpg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 106),
                  Expanded(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Webtoon App',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'Criei um aplicativo em Flutter para leitura de mangás e webtoons, seguindo um design profissional criado no Figma. Com atenção aos detalhes e habilidades em animações, criei uma interface elegante e moderna que oferece uma experiência de leitura agradável e intuitiva para os usuários.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines:
                                10, // Defina o número máximo de linhas que você deseja exibir
                          ),
                          const SizedBox(height: 28),
                          InkWell(
                            onTap: () {
                              launchWebtoonApp();
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              width: 260,
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff0EE6B7),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  SvgPicture.asset(
                                      'assets/svg/arrow_right.svg'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
                .animate()
                .fade(
                  begin: 0,
                  delay: 0.ms,
                  duration: 2200.ms,
                )
                .move(
                  begin: const Offset(-200, 0),
                  end: const Offset(0, 0),
                  duration: 2000.ms,
                ),
            const SizedBox(height: 248),
            const Center(
              child: Text(
                'Gostaria de ter meu contato para futuras oportunidades?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 68),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchLinkedin();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/linkedin.svg',
                      width: 63,
                      height: 63,
                    ),
                  ),
                  const SizedBox(width: 45),
                  InkWell(
                    onTap: () {
                      launchGithub();
                    },
                    child: SvgPicture.asset(
                      'assets/svg/github.svg',
                      width: 63,
                      height: 63,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 68),
            const Center(
              child: Text(
                'Fique à vontade para me contatar para discutir ideias e projetos. Vamos trabalhar juntos para alcançar seus objetivos!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 44),
            Center(
              child: TextButton(
                onPressed: () {
                  FlutterClipboard.copy('lucasmosarto@gmail.com');
                  const snackBar = SnackBar(
                    content: Text('Copiado para a área de transferência!'),
                    duration: Duration(seconds: 2),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text(
                  'lucasmosarto@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff0EE6B7),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 68),
          ],
        ),
      ),
    );
  }
}
