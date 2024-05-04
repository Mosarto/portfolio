import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlGithub = Uri.parse('https://github.com/Mosarto');

final Uri _urlLinkedin =
    Uri.parse('https://www.linkedin.com/in/lucas-oliveira-336566197/');

final Uri _urlInstagram = Uri.parse('https://www.instagram.com/mosarto/');

final Uri _urlWebtoonApp = Uri.parse('https://github.com/Mosarto/webtoonapp/');

final Uri _urlGyme = Uri.parse('https://github.com/Mosarto/gyme/');

final Uri _urlCryptoboard =
    Uri.parse('https://github.com/Mosarto/cryptoboard/');

void launchGithub() async {
  if (!await launchUrl(_urlGithub)) {
    Logger().e('Could not launch $_urlGithub');
  }
}

void launchLinkedin() async {
  if (!await launchUrl(_urlLinkedin)) {
    Logger().e('Could not launch $_urlLinkedin');
  }
}

void launchInstagram() async {
  if (!await launchUrl(_urlInstagram)) {
    Logger().e('Could not launch $_urlInstagram');
  }
}

void launchWebtoonApp() async {
  if (!await launchUrl(_urlWebtoonApp)) {
    Logger().e('Could not launch $_urlWebtoonApp');
  }
}

void launchGyme() async {
  if (!await launchUrl(_urlGyme)) {
    Logger().e('Could not launch $_urlGyme');
  }
}

void launchCryptoboard() async {
  if (!await launchUrl(_urlCryptoboard)) {
    Logger().e('Could not launch $_urlCryptoboard');
  }
}
