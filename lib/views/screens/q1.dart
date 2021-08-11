import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:questionair_app/views/components/common/q_button.dart';
import 'package:questionair_app/views/components/common/show_questionair_state.dart';
import 'package:questionair_app/views/screens/q2.dart';

class Q1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('あなたの体調は？'),
      ),
      body: ListView(
        children: [
          QButton(
            param: '良い',
            color: Colors.red,
            route: Q2(),
          ),
          QButton(
            param: '普通',
            color: Colors.yellow,
            route: Q2(),
          ),
          QButton(
            param: '悪い',
            color: Colors.blue,
            route: Q2(),
          ),
          ShowQuestionairState(),
        ],
      ),
    );
  }
}
