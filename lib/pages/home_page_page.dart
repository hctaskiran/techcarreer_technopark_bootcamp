import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({super.key});
  final String computerText = 'OGUZHAN \n COMPUTER';
  final pause = const Duration(seconds: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AnimatedTextKit(
        pause: pause,
        repeatForever: true,
        animatedTexts: [
          FadeAnimatedText(
            computerText, 
            textStyle: const TextStyle(
              fontSize: 40,
              )
            )
          ]
        )
      ),
    );
  }
}