import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:questionair_app/views/components/common/q_button.dart';
import 'package:questionair_app/views/components/common/show_questionair_state.dart';
import 'package:questionair_app/views/screens/result.dart';

class Q2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('あなたの気分は？'),
      ),
      body: ListView(
        children: [
          QButton(
            param: '良い',
            color: Colors.red,
            route: Result(),
          ),
          QButton(
            param: '普通',
            color: Colors.yellow,
            route: Result(),
          ),
          QButton(
            param: '悪い',
            color: Colors.blue,
            route: Result(),
          ),
          ShowQuestionairState(),
        ],
      ),
    );
  }
}
