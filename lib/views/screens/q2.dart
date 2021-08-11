import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/questionair_provider.dart';

class Q2 extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // コントローラの宣言
    final _questionairController = useProvider(questionairProvider.notifier);
    // ステートの宣言
    final _questionairState =
        useProvider(questionairProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        title: Text('あなたの体調は？'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            child: const Text('良い'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              _questionairController.setParam('良い');
              // エラーが起こる
              // Navigator.push(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (context) {
              //       return Q2();
              //     },
              //   ),
              // );
            },
          ),
          ElevatedButton(
            child: const Text('普通'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              _questionairController.setParam('普通');
            },
          ),
          ElevatedButton(
            child: const Text('悪い'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              _questionairController.setParam('悪い');
            },
          ),
          Text('${_questionairState.param}'),
        ],
      ),
    );
  }
}
