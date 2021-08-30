import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildHopAnimatedText({required String text}) {
  return DefaultTextStyle(
    style: const TextStyle(
      color: Colors.amber,
      fontSize: 20.0,
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(text),
        WavyAnimatedText(text),
      ],
      isRepeatingAnimation: true,
      onTap: () {
        print("Tap Event");
      },
    ),
  );
}
