import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomin/views/components/top/build_hop_animated_text.dart';

import 'package:nomin/views/screens/player_select_screen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // 軸方向のサイズを最小にすることで、中央寄せができる
          children: [
            Image(
              width: 150,
              height: 150,
              image: AssetImage('lib/assets/images/golden-lights.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            buildHopAnimatedText(text: 'ゲームを選択してください'),
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
