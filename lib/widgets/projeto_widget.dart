import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class ProjetoWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Function() laucher;
  final Widget? customContainer;
  final bool isReversed;

  const ProjetoWidget({
    Key? key,
    this.imagePath = '',
    required this.title,
    required this.description,
    required this.laucher,
    this.isReversed = false,
    this.customContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 1245
        ? SizedBox(
            height: 424,
            child: isReversed
                ? Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 18),
                              Text(
                                description,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: laucher,
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
                      customContainer ??
                          Container(
                            height: 424,
                            width: 700,
                            decoration: BoxDecoration(
                              color: const Color(0xff0d0b1c),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePath,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    ],
                  )
                : Row(
                    children: [
                      customContainer ??
                          Container(
                            height: 424,
                            width: 700,
                            decoration: BoxDecoration(
                              color: const Color(0xff0d0b1c),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePath,
                                ),
                                fit: BoxFit.cover,
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
                              Text(
                                title,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 18),
                              Text(
                                description,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: laucher,
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
              begin: isReversed ? const Offset(200, 0) : const Offset(-200, 0),
              end: const Offset(0, 0),
              duration: 2000.ms,
            )
        : Column(
            children: [
              AspectRatio(
                aspectRatio: 1.6,
                child: customContainer ??
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff0d0b1c),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            imagePath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: laucher,
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        children: [
                          const Text(
                            'Ver mais',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff0EE6B7),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SvgPicture.asset('assets/svg/arrow_right.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
            );
  }
}
