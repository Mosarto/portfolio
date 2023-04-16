import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  final List<bool> _isFinish = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: (MediaQuery.of(context).size.width - 240) / 2,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF171A1B),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF4A4A4A),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 24,
            child: Row(
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFF5F56),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFBD2E),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff27C93F),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 70,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF202226),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'lucasmosart.com.br',
                      style: TextStyle(
                        fontFamily: 'Fire Sans',
                        height: 1,
                        color: Color(0xffd3d7df),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 52,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      AnimatedTextKit(
                        onNextBeforePause: (p0, p1) {
                          setState(() {
                            _isFinish[1] = true;
                          });
                        },
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'class',
                            textStyle: const TextStyle(
                              color: Color(0xffff6d9d),
                              fontFamily: 'FireCode',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      _isFinish[1] == true
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[2] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Sobre',
                                  textStyle: const TextStyle(
                                    color: Color(0xff62ddfd),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      _isFinish[2]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[3] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '{',
                                  textStyle: const TextStyle(
                                    color: Color(0xfff8f8f2),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      _isFinish[3]
                          ? AnimatedTextKit(
                              onNextBeforePause: ((p0, p1) {
                                setState(() {
                                  _isFinish[4] = true;
                                });
                              }),
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'String',
                                  textStyle: const TextStyle(
                                    color: Color(0xff62ddfd),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      _isFinish[4]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[5] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'profissao',
                                  textStyle: const TextStyle(
                                    color: Color(0xfff8f8f2),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      _isFinish[5]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[6] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '=',
                                  textStyle: const TextStyle(
                                    color: Color(0xffff6d9d),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      SizedBox(
                        height: 24,
                        width: 184,
                        child: Stack(
                          children: [
                            Positioned(
                              child: _isFinish[6]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[7] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          "'Desenvolvedor'",
                                          textStyle: const TextStyle(
                                            color: Color(0xfff1fa84),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                            Positioned(
                              right: 0,
                              child: _isFinish[7]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[8] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          ';',
                                          textStyle: const TextStyle(
                                            wordSpacing: 0,
                                            color: Color(0xfff8f8f2),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      SizedBox(
                        height: 24,
                        width: 144,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              child: _isFinish[8]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[9] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'List',
                                          textStyle: const TextStyle(
                                            color: Color(0xff62ddfd),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                            Positioned(
                              left: 44,
                              child: _isFinish[9]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[10] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          '<',
                                          textStyle: const TextStyle(
                                            wordSpacing: -20,
                                            color: Color(0xfff8f8f2),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                            Positioned(
                              left: 56,
                              child: _isFinish[10]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[11] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'String',
                                          textStyle: const TextStyle(
                                            color: Color(0xff62ddfd),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                            Positioned(
                              right: 0,
                              child: _isFinish[11]
                                  ? AnimatedTextKit(
                                      onNextBeforePause: (p0, p1) {
                                        setState(() {
                                          _isFinish[12] = true;
                                        });
                                      },
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          '>',
                                          textStyle: const TextStyle(
                                            wordSpacing: -20,
                                            color: Color(0xfff8f8f2),
                                            fontFamily: 'FireCode',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      _isFinish[12]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[13] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'linguagens',
                                  textStyle: const TextStyle(
                                    color: Color(0xfff8f8f2),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      _isFinish[13]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[14] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '=',
                                  textStyle: const TextStyle(
                                    color: Color(0xffff6d9d),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                      _isFinish[14]
                          ? AnimatedTextKit(
                              onNextBeforePause: (p0, p1) {
                                setState(() {
                                  _isFinish[15] = true;
                                });
                              },
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '[',
                                  textStyle: const TextStyle(
                                    color: Color(0xffff6d9d),
                                    fontFamily: 'FireCode',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Container(
                    height: 24,
                    width: 84,
                    margin: const EdgeInsets.only(left: 32),
                    child: Stack(
                      children: [
                        Positioned(
                          child: _isFinish[15]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[16] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "'Dart'",
                                      textStyle: const TextStyle(
                                        color: Color(0xfff1fa84),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        Positioned(
                          left: 62,
                          child: _isFinish[16]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[17] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      ',',
                                      textStyle: const TextStyle(
                                        color: Color(0xfff8f8f2),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 104,
                    margin: const EdgeInsets.only(left: 32),
                    child: Stack(
                      children: [
                        Positioned(
                          child: _isFinish[17]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[18] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "'Flutter'",
                                      textStyle: const TextStyle(
                                        color: Color(0xfff1fa84),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        Positioned(
                          left: 94,
                          child: _isFinish[18]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[19] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      ',',
                                      textStyle: const TextStyle(
                                        color: Color(0xfff8f8f2),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 48,
                    margin: const EdgeInsets.only(left: 32),
                    child: Stack(
                      children: [
                        Positioned(
                          child: _isFinish[19]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[20] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "'C#'",
                                      textStyle: const TextStyle(
                                        color: Color(0xfff1fa84),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        Positioned(
                          left: 40,
                          child: _isFinish[20]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[21] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      ',',
                                      textStyle: const TextStyle(
                                        color: Color(0xfff8f8f2),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 104,
                    margin: const EdgeInsets.only(left: 32),
                    child: Stack(
                      children: [
                        Positioned(
                          child: _isFinish[21]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[22] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "'Python'",
                                      textStyle: const TextStyle(
                                        color: Color(0xfff1fa84),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        Positioned(
                          left: 84,
                          child: _isFinish[22]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[23] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      ',',
                                      textStyle: const TextStyle(
                                        color: Color(0xfff8f8f2),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 44,
                    margin: const EdgeInsets.only(left: 12),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: _isFinish[23]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[24] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      "]",
                                      textStyle: const TextStyle(
                                        color: Color(0xffff6d9d),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        Positioned(
                          left: 12,
                          child: _isFinish[24]
                              ? AnimatedTextKit(
                                  onNextBeforePause: (p0, p1) {
                                    setState(() {
                                      _isFinish[25] = true;
                                    });
                                  },
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      ";",
                                      textStyle: const TextStyle(
                                        color: Color(0xfff8f8f2),
                                        fontFamily: 'FireCode',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  _isFinish[25]
                      ? AnimatedTextKit(
                          onNextBeforePause: (p0, p1) {
                            setState(() {
                              _isFinish[26] = true;
                            });
                          },
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              '}',
                              textStyle: const TextStyle(
                                color: Color(0xfff8f8f2),
                                fontFamily: 'FireCode',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
