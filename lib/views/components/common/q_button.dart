import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/views/screens/q2.dart';

class QButton extends HookWidget {
  QButton({
    required this.param,
    required this.color,
    required this.route,
  });
  String param;
  Color color;
  Widget route;

  @override
  Widget build(BuildContext context) {
    // コントローラの宣言
    final _questionairController = useProvider(questionairProvider.notifier);
    return ElevatedButton(
      child: Text(param),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        _questionairController.setParam(param);
        // エラーが起こる
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) {
              return route;
              // return Q2();
            },
          ),
        );
      },
    );
  }
}
