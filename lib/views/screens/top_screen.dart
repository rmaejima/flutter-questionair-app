import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              height: 60,
            ),
            ElevatedButton(
              child: Text('サクッと罰ゲーム♪'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
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
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text('次の罰ゲーム♬'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
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
          ],
        ),
      ),
    );
  }
}
