import 'package:url_launcher/url_launcher.dart';

final Uri _urlGithub = Uri.parse('https://github.com/Mosarto');

final Uri _urlLinkedin =
    Uri.parse('https://www.linkedin.com/in/lucas-oliveira-336566197/');

final Uri _urlInstagram = Uri.parse('https://www.instagram.com/mosarto/');

final Uri _urlWebtoonApp = Uri.parse('https://github.com/Mosarto/webtoonapp/');

final Uri _urlGyme = Uri.parse('https://github.com/Mosarto/gyme/');

final Uri _urlCryptoboard =
    Uri.parse('https://github.com/Mosarto/cryptoboard/');

Future<void> launchGithub() async {
  if (!await launchUrl(_urlGithub)) {
    throw Exception('Could not launch $_urlGithub');
  }
}

Future<void> launchLinkedin() async {
  if (!await launchUrl(_urlLinkedin)) {
    throw Exception('Could not launch $_urlLinkedin');
  }
}

Future<void> launchInstagram() async {
  if (!await launchUrl(_urlInstagram)) {
    throw Exception('Could not launch $_urlInstagram');
  }
}

Future<void> launchWebtoonApp() async {
  if (!await launchUrl(_urlWebtoonApp)) {
    throw Exception('Could not launch $_urlWebtoonApp');
  }
}

Future<void> launchGyme() async {
  if (!await launchUrl(_urlGyme)) {
    throw Exception('Could not launch $_urlGyme');
  }
}

Future<void> launchCryptoboard() async {
  if (!await launchUrl(_urlCryptoboard)) {
    throw Exception('Could not launch $_urlCryptoboard');
  }
}
