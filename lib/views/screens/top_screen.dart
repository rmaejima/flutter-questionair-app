import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:nomin/views/screens/player_select_screen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // tbd
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // 軸方向のサイズを最小にすることで、中央寄せができる
          children: [
            Image(
              width: 150,
              height: 150,
              image: AssetImage('lib/assets/images/nomin_logo.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            _buildHopAnimatedText(text: 'ゲームを選択してください'),
            const SizedBox(
              height: 60,
            ),
            _buildButton(context, 'サクッと罰ゲーム♪'),
            const SizedBox(
              height: 30,
            ),
            _buildButton(context, '次の罰ゲーム♬'),
          ],
        ),
      ),
    );
  }

  Widget _buildHopAnimatedText({required String text}) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white, // tbd
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText(text),
          WavyAnimatedText(text),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          // function
        },
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return SizedBox(
      width: 200.0, // tbd
      height: 50, // tbd
      child: ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) {
                return PlayerSelectScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
