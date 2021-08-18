import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Q1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤーを追加してください'),
      ),
      // body: ListView(
      //   children: [
      //     QButton(
      //       param: '良い',
      //       color: Colors.red,
      //       route: Q2(),
      //     ),
      //     QButton(
      //       param: '普通',
      //       color: Colors.yellow,
      //       route: Q2(),
      //     ),
      //     QButton(
      //       param: '悪い',
      //       color: Colors.blue,
      //       route: Q2(),
      //     ),
      //     ShowQuestionairState(),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Text('あいうお'),
          );
        },
      ),
    );
  }
}
