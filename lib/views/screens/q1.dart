import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:questionair_app/views/components/common/q_button.dart';
import 'package:questionair_app/views/components/common/show_questionair_state.dart';
import 'package:questionair_app/views/screens/q2.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/questionair_provider.dart';

class Q1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // コントローラの宣言
    // final _questionairController = useProvider(questionairProvider.notifier);
    // // ステートの宣言
    // final _questionairState =
    //     useProvider(questionairProvider.select((value) => value));

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
          // ElevatedButton(
          //   child: const Text('良い'),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.red,
          //     onPrimary: Colors.white,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   onPressed: () {
          //     _questionairController.setParam('良い');
          //     // エラーが起こる
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute<void>(
          //         builder: (context) {
          //           return Q2();
          //         },
          //       ),
          //     );
          //   },
          // ),
          // ElevatedButton(
          //   child: const Text('普通'),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.yellow,
          //     onPrimary: Colors.white,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   onPressed: () {
          //     _questionairController.setParam('普通');
          //   },
          // ),
          // ElevatedButton(
          //   child: const Text('悪い'),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.blue,
          //     onPrimary: Colors.white,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //   ),
          //   onPressed: () {
          //     _questionairController.setParam('悪い');
          //   },
          // ),
          // Text('${_questionairState.param}'),
        ],
      ),
    );
  }
}
