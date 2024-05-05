import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/container/experiencias.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/widgets/appbar_widget.dart';
import 'package:portfolio/widgets/custom_gradient_background.dart';
import 'package:portfolio/widgets/hello_widget.dart';
import 'package:portfolio/widgets/projetos_list_widget.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1E22),
      body: CustomGradientBackground(
        child: DynMouseScroll(
          scrollSpeed: 1.5,
          builder: (context, controller, physics) => LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return constraints.maxWidth > 1245
                  ? ListView(
                      controller: controller,
                      physics: physics,
                      padding: const EdgeInsets.all(36),
                      children: [
                        AppBarWidget(scrollControllerOne: controller),
                        const SizedBox(height: 120),
                        const HelloWidget(),
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
                        const ProjetosListWidget(),
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
                                content: Text(
                                    'Copiado para a área de transferência!'),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
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
                      ],
                    )
                  : ListView(
                      controller: controller,
                      physics: physics,
                      padding: const EdgeInsets.all(16),
                      children: [
                        AppBarWidget(scrollControllerOne: controller),
                        const SizedBox(height: 64),
                        const HelloWidget(),
                        const SizedBox(height: 64),
                        const Text(
                          'Experiencia',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Experiencias(),
                        const SizedBox(height: 64),
                        const Text(
                          'Ultimos Projetos',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 32),
                        const ProjetosListWidget(),
                        const SizedBox(height: 64),
                        const Center(
                          child: Text(
                            'Gostaria de ter meu contato para futuras oportunidades?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
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
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                              const SizedBox(width: 32),
                              InkWell(
                                onTap: () {
                                  launchGithub();
                                },
                                child: SvgPicture.asset(
                                  'assets/svg/github.svg',
                                  width: 62,
                                  height: 62,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Center(
                          child: Text(
                            'Fique à vontade para me contatar para discutir ideias e projetos. Vamos trabalhar juntos para alcançar seus objetivos!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
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
                                content: Text(
                                    'Copiado para a área de transferência!'),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: const Text(
                              'lucasmosarto@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff0EE6B7),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
