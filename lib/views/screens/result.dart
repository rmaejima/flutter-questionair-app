import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:questionair_app/views/components/common/show_questionair_state.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('結果'),
      ),
      body: ListView(
        children: [
          // QButton(
          //   param: '良い',
          //   color: Colors.red,
          //   route: Q2(),
          // ),
          // QButton(
          //   param: '普通',
          //   color: Colors.yellow,
          //   route: Q2(),
          // ),
          // QButton(
          //   param: '悪い',
          //   color: Colors.blue,
          //   route: Q2(),
          // ),
          ShowQuestionairState(),
        ],
      ),
    );
  }
}
