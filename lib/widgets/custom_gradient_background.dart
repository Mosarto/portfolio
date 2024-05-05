import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomGradientBackground extends StatefulWidget {
  final Widget child;

  const CustomGradientBackground({super.key, required this.child});

  @override
  CustomGradientBackgroundState createState() =>
      CustomGradientBackgroundState();
}

class CustomGradientBackgroundState extends State<CustomGradientBackground> {
  ValueNotifier<double> scrollOffsetNotifier = ValueNotifier<double>(0);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollUpdateNotification) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            scrollOffsetNotifier.value = scrollNotification.metrics.pixels;
          });
        }
        return true;
      },
      child: ValueListenableBuilder<double>(
        valueListenable: scrollOffsetNotifier,
        builder: (context, value, child) {
          return Stack(
            children: [
              Positioned(
                top: value * -1.25,
                right: 50,
                child: GradientSphere(
                    radius: 500, show: value < 600 ? true : false),
              ),
              Positioned(
                top: value * 0.10,
                left: MediaQuery.of(context).size.width / 4,
                child: GradientSphere(
                  radius: 550,
                  show: value < 350 ? false : (value > 1800 ? false : true),
                ),
              ),
              Positioned(
                top: value * 0.10,
                left: -0,
                child: GradientSphere(
                    radius: 150, show: value < 1400 ? false : true),
              ),
              Center(
                child: SizedBox(
                  width: 1366,
                  child: widget.child,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class GradientSphere extends StatelessWidget {
  final double radius;
  final bool show;
  const GradientSphere({
    Key? key,
    required this.show,
    this.radius = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius,
      width: radius,
      child: CustomPaint(
        painter: SpherePainter(),
        child: Container(),
      ),
    )
        .animate(target: show == true ? 1 : 0)
        .fade(duration: const Duration(seconds: 2));
  }
}

class SpherePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const gradient = LinearGradient(
      colors: [
        Color(0xff00bcd4),
        Color(0xff673ab7),
      ],
    );

    final Paint paint = Paint()
      ..shader = gradient.createShader(
          Rect.fromCircle(center: Offset.zero, radius: size.width))
      ..style = PaintingStyle.fill;

    const blurSigma = 300.0;

    canvas.drawCircle(Offset(size.width * 1, size.height * 1), size.width * 1,
        paint..maskFilter = const MaskFilter.blur(BlurStyle.normal, blurSigma));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
