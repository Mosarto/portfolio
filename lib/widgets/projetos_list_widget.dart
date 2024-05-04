import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/widgets/projeto_widget.dart';

class ProjetosListWidget extends StatefulWidget {
  const ProjetosListWidget({super.key});

  @override
  State<ProjetosListWidget> createState() => _ProjetosListWidgetState();
}

class _ProjetosListWidgetState extends State<ProjetosListWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        const ProjetoWidget(
          imagePath: 'assets/png/cryptoboard.png',
          title: 'CryptoBoard',
          description:
              'Implementei uma interface para um Cryptocurrency Dashboard em Flutter, seguindo um design profissional do designer no Figma. O resultado foi uma interface elegante e moderna, com alto nível de qualidade e atenção aos detalhes.',
          laucher: launchCryptoboard,
        ),
        const SizedBox(height: 134),
        const ProjetoWidget(
          imagePath: 'assets/png/gyme.png',
          title: 'Gyme',
          description:
              'Criei uma landing page em Flutter para o serviço de treinamento físico GYME, com base em um design profissional do Figma. Com habilidades em animações e atenção aos detalhes, criei uma interface elegante e moderna que oferece uma experiência intuitiva e envolvente aos usuários.',
          laucher: launchGyme,
          isReversed: true,
        ),
        const SizedBox(height: 134),
        ProjetoWidget(
          title: 'Webtoon App',
          description:
              'Criei um aplicativo em Flutter para leitura de mangás e webtoons, seguindo um design profissional criado no Figma. Com atenção aos detalhes e habilidades em animações, criei uma interface elegante e moderna que oferece uma experiência de leitura agradável e intuitiva para os usuários.',
          laucher: launchWebtoonApp,
          customContainer: Container(
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
        ),
      ],
    );
  }
}
