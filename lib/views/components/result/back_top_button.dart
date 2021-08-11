import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/views/screens/top.dart';

class BackTopButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // コントローラの宣言
    final _questionairController = useProvider(questionairProvider.notifier);
    return ElevatedButton(
      child: Text('トップに戻る'),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        _questionairController.resetParam();
        _questionairController.resetCategory();
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) {
              return Top();
            },
          ),
        );
      },
    );
  }
}
