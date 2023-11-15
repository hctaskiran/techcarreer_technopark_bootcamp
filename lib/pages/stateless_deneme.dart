import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class StatelessDenemePage extends StatelessWidget {
  const StatelessDenemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Page Example'),
      ),
      body: Center(
        child: _animatedText(),
      ),
    );
  }

  AnimatedTextKit _animatedText() {
    const pauseSec = Duration(seconds: 3);
    const speedSec = Duration(milliseconds: 100);
    const midTextSize = TextStyle(fontSize: 45); 
    const String midText = 'Hello World =)';

    return AnimatedTextKit(
        pause: pauseSec,
        isRepeatingAnimation: true,
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            midText, 
            textStyle: midTextSize,
            speed: speedSec
          )
        ]
      );
  }
}