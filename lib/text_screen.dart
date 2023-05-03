import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Olá, mundo!',
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            const SizedBox(height: 30,),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('Tentar não...'),
                  FadeAnimatedText('Faça ou não faça...'),
                  FadeAnimatedText('Tentativa não há.'),
                ],
                totalRepeatCount: 3,
              ),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('Flutter'),
                  RotateAnimatedText('é uma ferramenta'),
                  RotateAnimatedText('excelente!'),
                ],
                totalRepeatCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
